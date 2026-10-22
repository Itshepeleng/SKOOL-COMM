
using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;
using SkoolComm.Infrastructure.Models;
using Supabase;

namespace SkoolComm.Infrastructure.Services
{
    public class SupabaseAuthService : IAuthService
    {
        private readonly Client _supabase;

        public SupabaseAuthService(Client supabase)
        {
            _supabase = supabase;
        }

        public async Task<AuthResult> LoginAsync(
            string email,
            string password)
        {
            try
            {
                // Step 1: Authenticate with Supabase Auth.
                var response = await _supabase.Auth
                    .SignInWithPassword(email, password);

                if (response.User == null)
                {
                    return new AuthResult
                    {
                        Success = false,
                        Message = "Invalid email or password."
                    };
                }

                // Step 2: Retrieve the matching staff record.
                // The authenticated user's identity must satisfy RLS.
                var staffResponse = await _supabase
                    .From<StaffRecord>()
                    .Where(staff =>
                        staff.AuthUserId == response.User.Id)
                    .Get();

                var staff = staffResponse.Models.FirstOrDefault();

                if (staff == null)
                {
                    return new AuthResult
                    {
                        Success = false,
                        Message = "No matching staff account was found."
                    };
                }

                // Step 3: Check that the staff account is active.
                if (!string.Equals(
                    staff.Status,
                    "active",
                    StringComparison.OrdinalIgnoreCase))
                {
                    await _supabase.Auth.SignOut();

                    return new AuthResult
                    {
                        Success = false,
                        Message = "This staff account is not active."
                    };
                }

                // Step 4: Return the verified staff details.
                return new AuthResult
                {
                    Success = true,
                    Message = "Login successful.",
                    AccessToken = response.AccessToken,
                    StaffId = staff.StaffId,
                    Email = staff.Email,
                    Role = staff.Role
                };
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());

                return new AuthResult
                {
                    Success = false,
                    Message = ex.Message

                };
            }
        }
    }
}
