using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;
using SkoolComm.Infrastructure.Models;
using Supabase;

namespace SkoolComm.Infrastructure.Services
{
    public class SupabaseLearnerCodeService : ILearnerCodeService
    {
        private readonly Client _supabase;

        public SupabaseLearnerCodeService(Client supabase)
        {
            _supabase = supabase;
        }

        public async Task<List<LearnerCodeItem>> GetAllAsync()
        {
            var learners = await _supabase.From<LearnerRecord>().Get();
            var codes = await _supabase.From<LearnerCodeRecord>().Get();

            var live = codes.Models
                .Where(c => !c.Revoked)
                .GroupBy(c => c.LearnerId)
                .ToDictionary(g => g.Key, g => g.First());

            return learners.Models
                .OrderBy(l => l.Grade).ThenBy(l => l.Class).ThenBy(l => l.LastName)
                .Select(l =>
                {
                    live.TryGetValue(l.LearnerId, out var c);
                    return new LearnerCodeItem
                    {
                        LearnerId = l.LearnerId,
                        FirstName = l.FirstName,
                        LastName = l.LastName,
                        Grade = l.Grade,
                        Class = l.Class,
                        Code = c?.Code,
                        Uses = c?.Uses ?? 0,
                        MaxUses = c?.MaxUses ?? 2
                    };
                })
                .ToList();
        }

        public async Task GenerateAsync(int learnerId, bool replace)
        {
            await _supabase.Rpc("generate_learner_code", new Dictionary<string, object>
            {
                { "p_learner_id", learnerId },
                { "p_replace", replace }
            });
        }

        public async Task GenerateMissingAsync()
        {
            await _supabase.Rpc("generate_missing_learner_codes", new Dictionary<string, object>());
        }
    }
}
