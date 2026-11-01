using System.Text.Json;
using System.Text.Json.Serialization;
using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;
using Supabase;
namespace SkoolComm.Infrastructure.Services
{
    public class SupabaseMessageService : IMessageService
    {
        private readonly Client _supabase;

        public SupabaseMessageService(Client supabase)
        {
            _supabase = supabase;
        }

        private sealed class EngagementRow
        {
            [JsonPropertyName("messageid")] public long MessageId { get; set; }
            [JsonPropertyName("subject")] public string Subject { get; set; } = "";
            [JsonPropertyName("audience")] public string Audience { get; set; } = "";
            [JsonPropertyName("sent_at")] public DateTimeOffset SentAt { get; set; }
            [JsonPropertyName("delivered")] public int Delivered { get; set; }
            [JsonPropertyName("seen")] public int Seen { get; set; }
        }

        private sealed class ClassRow
        {
            [JsonPropertyName("class_name")] public string ClassName { get; set; } = "";
        }

        public async Task<List<MessageEngagementItem>> GetEngagementAsync()
        {
            var res = await _supabase.Rpc("get_message_engagement", new Dictionary<string, object>());
            var rows = JsonSerializer.Deserialize<List<EngagementRow>>(
                string.IsNullOrWhiteSpace(res.Content) ? "[]" : res.Content) ?? new();

            return rows.Select(r => new MessageEngagementItem
            {
                MessageId = r.MessageId,
                Subject = r.Subject,
                Audience = r.Audience,
                SentAt = r.SentAt,
                Delivered = r.Delivered,
                Seen = r.Seen
            }).ToList();
        }

        public async Task<List<string>> GetClassesAsync()
        {
            var res = await _supabase.Rpc("get_message_classes", new Dictionary<string, object>());
            var rows = JsonSerializer.Deserialize<List<ClassRow>>(
                string.IsNullOrWhiteSpace(res.Content) ? "[]" : res.Content) ?? new();
            return rows.Select(r => r.ClassName).ToList();
        }

        public async Task<int> SendAsync(string audience, string subject, string body, string sender)
        {
            var res = await _supabase.Rpc("send_message", new Dictionary<string, object>
            {
                { "p_audience", audience },
                { "p_subject", subject },
                { "p_body", body },
                { "p_sender", sender }
            });
            return int.TryParse(res.Content?.Trim(), out var count) ? count : 0;
        }



    }
}
