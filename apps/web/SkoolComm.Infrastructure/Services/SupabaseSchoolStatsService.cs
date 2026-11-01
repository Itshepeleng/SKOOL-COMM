
using System.Collections.Generic;
using System.Text.Json;
using System.Threading.Tasks;
using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;
using Supabase;

namespace SkoolComm.Infrastructure.Services
{
    public class SupabaseSchoolStatsService : ISchoolStatsService
    {
        private readonly Client _supabase;

        public SupabaseSchoolStatsService(Client supabase)
        {
            _supabase = supabase;
        }

        public async Task<global::SkoolComm.Domain.Models.SchoolCounts> GetCountsAsync()
        {
            var response = await _supabase.Rpc(
                "get_school_counts",
                new Dictionary<string, object>()
            );

            using var doc = JsonDocument.Parse(
                string.IsNullOrWhiteSpace(response.Content)
                    ? "[]"
                    : response.Content
            );

            var root = doc.RootElement;

            var row = root.ValueKind == JsonValueKind.Array
                ? (root.GetArrayLength() > 0 ? root[0] : default)
                : root;

            return new global::SkoolComm.Domain.Models.SchoolCounts
            {
                Learners = Read(row, "learner_count"),
                Parents = Read(row, "parent_count")
            };
        }

        private static int Read(JsonElement row, string name)
        {
            if (row.ValueKind == JsonValueKind.Object &&
                row.TryGetProperty(name, out var value) &&
                value.TryGetInt32(out var number))
            {
                return number;
            }

            return 0;
        }

       
    }
}
