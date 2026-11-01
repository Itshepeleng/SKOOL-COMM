using System;
using System.Collections.Generic;
using System.Linq;
namespace SkoolComm.Domain.Models
{
    public class MessageEngagementItem
    {
        public long MessageId { get; set; }
        public string Subject { get; set; } = "";
        public string Audience { get; set; } = "";
        public DateTimeOffset SentAt { get; set; }
        public int Delivered { get; set; }
        public int Seen { get; set; }

        public int Unread => Math.Max(Delivered - Seen, 0);
        public int ReadRate => Delivered == 0 ? 0 : (int)Math.Round(100.0 * Seen / Delivered);
    }

    public class MessagesPageModel
    {
        public List<MessageEngagementItem> Items { get; set; } = new();
        public List<string> Classes { get; set; } = new();
        public List<LearnerSummary> AllLearners { get; set; } = new();
        public string SelectedClass { get; set; } = "";

        public int MessagesSent => Items.Count;
        public int TotalUnread => Items.Sum(i => i.Unread);
        public int OverallReadRate
        {
            get
            {
                var delivered = Items.Sum(i => i.Delivered);
                return delivered == 0 ? 0 : (int)Math.Round(100.0 * Items.Sum(i => i.Seen) / delivered);
            }
        }
    }
}