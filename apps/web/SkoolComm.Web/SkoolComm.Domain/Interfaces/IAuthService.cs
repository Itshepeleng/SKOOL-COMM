using System;
using System.Collections.Generic;
using System.Text;
using SkoolComm.Domain.Models;
using System.Threading.Tasks;

namespace SkoolComm.Domain.Interfaces
{
    public interface IAuthService
    {

        Task<AuthResult> LoginAsync(string email, string password);



    }
}
