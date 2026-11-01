using System;
using System.Collections.Generic;
using System.Text;

namespace SkoolComm.Domain.Models
{
    public class Offence
    {
        public string Code { get; set; } = "";
        public string Description { get; set; } = "";
        public int Level { get; set; }
        public int Points { get; set; }
    }

    // The school's offence list (from the Wilgehof behaviour sheet)
    public static class OffenceCatalog
    {
        // Must be declared before All, because All uses it
        public static readonly Dictionary<int, (string Name, int Points)> Levels = new()
        {
            [1] = ("Enforcing reprimands", 5),
            [2] = ("Infringement (caution)", 10),
            [3] = ("Serious offences", 20),
            [4] = ("Very serious offences", 30),
            [5] = ("Criminal / serious violations (SGB & Department)", 50)
        };

        public static readonly List<Offence> All = Build();

        public static Offence? Find(string code) =>
            All.FirstOrDefault(o => o.Code == code);

        private static List<Offence> Build()
        {
            var list = new List<Offence>();

            void Add(int level, string code, string description) =>
                list.Add(new Offence
                {
                    Code = code,
                    Description = description,
                    Level = level,
                    Points = Levels[level].Points
                });

            // Level 1
            Add(1, "101", "Failing to attend class on time");
            Add(1, "102", "Leaving class without permission");
            Add(1, "103", "Cheating in class test");
            Add(1, "104", "Failing to complete homework");
            Add(1, "105", "Dishonesty with minor consequences");
            Add(1, "106", "Books at home");
            Add(1, "107", "Disrupting class discipline");

            Add(2, "201", "Frequent repetition of Level 1 infringement");
            Add(2, "202", "Possession or use of tobacco");
            Add(2, "203", "Bunking classes");
            Add(2, "204", "Cheating/copying during examinations, tests, homework");
            Add(2, "205", "Verbally threatening safety of another learner");
            Add(2, "206", "Extremely disruptive behaviour (vandalism / breaking)");
            Add(2, "207", "Possession or use of matches");
            Add(2, "208", "Learner's cell phone visible");
            Add(2, "211", "Wearing incorrect uniform");
            Add(2, "220", "Back-chatting a teacher");

            Add(3, "301", "Frequent repetition of Level 2 infringement");
            Add(3, "302", "Injury to another person / (minor bullying)");
            Add(3, "303", "Possession or use of alcoholic / narcotic substance");
            Add(3, "304", "Severely disruptive behaviour – indecent (kissing / touching)");
            Add(3, "305", "Possession of a dangerous weapon/s");
            Add(3, "306", "Theft");
            Add(3, "307", "Gambling");
            Add(3, "308", "Disrespect towards educator");

            Add(4, "401", "Frequent repetition of Level 2 or 3 infringement");
            Add(4, "402", "Threatening with a dangerous weapon");
            Add(4, "403", "Selling drugs");
            Add(4, "404", "Sexual misconduct – possession/drawing of pornography");
            Add(4, "405", "Starting a fire");
            Add(4, "406", "Bunking detention");

            
            Add(5, "501", "Frequent repetition of Level 4 infringement");
            Add(5, "502", "Possession and peddling with narcotic substances");
            Add(5, "503", "Assault / fighting");
            Add(5, "504", "Sexual harassment, abuse or rape");
            Add(5, "505", "Robbery or major theft");
            Add(5, "506", "Intentionally using a dangerous weapon");
            Add(5, "507", "First suspension (remedial)");
            Add(5, "508", "Second suspension (punishment)");
            Add(5, "509", "Severe bullying");

            return list;
        }
    }
}