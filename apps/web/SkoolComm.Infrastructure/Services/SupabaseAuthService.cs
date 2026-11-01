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
                        Message = "Incorrect email or password. Please try again."
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
                // The technical detail stays in the server log only
                Console.WriteLine(ex.ToString());

                return new AuthResult
                {
                    Success = false,
                    Message = FriendlyMessage(ex.Message)
                };
            }
        }

        // Turns Supabase's technical errors into messages a person can read
        private static string FriendlyMessage(string technical)
        {
            var text = (technical ?? "").ToLowerInvariant();

            if (text.Contains("invalid_credentials") ||
                text.Contains("invalid login credentials"))
            {
                return "Incorrect email or password. Please try again.";
            }

            if (text.Contains("email_not_confirmed") ||
                text.Contains("email not confirmed"))
            {
                return "Your email address has not been confirmed yet. Please contact the school administrator.";
            }

            if (text.Contains("over_request_rate_limit") ||
                text.Contains("too many") ||
                text.Contains("429"))
            {
                return "Too many login attempts. Please wait a few minutes and try again.";
            }

            if (text.Contains("user_banned") ||
                text.Contains("banned"))
            {
                return "This account has been disabled. Please contact the school administrator.";
            }

            if (text.Contains("name or service not known") ||
                text.Contains("no such host") ||
                text.Contains("unable to connect") ||
                text.Contains("network") ||
                text.Contains("timed out"))
            {
                return "The server could not be reached. Please check your internet connection and try again.";
            }

            return "Login failed. Please try again, or contact the school administrator if the problem continues.";
        }
    }
}