
namespace SkoolComm.Domain.Models
{
    public class AuthResult
    {
        public bool Success { get; set; }
        public string? Message { get; set; }
        public string? AccessToken { get; set; }

        public int? StaffId { get; set; }
        public string? Email { get; set; }
        public string? Role { get; set; }
    }
}
