using SkoolComm.Domain.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace SkoolComm.Domain.Interfaces
{
    public  interface ILearnerCodeService
    {

        Task<List<LearnerCodeItem>> GetAllAsync();
        Task GenerateAsync(int learnerId, bool replace);
        Task GenerateMissingAsync();


    }
}
