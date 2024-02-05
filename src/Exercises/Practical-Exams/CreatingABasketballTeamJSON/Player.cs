using System;
using System.Collections.Generic;
using System.Text;

namespace CreatingABasketballTeamJSON
{
    public class Player
    {
        public Player(string name, Stats stats)
        {
            Name = name;
            Stats = stats;
        }

        public string Name { get; set; }

        public Stats Stats { get; set; }

        public double AverageStats
        {
            get
            {
                double totalStats = Stats.Endurance + Stats.Sprint + Stats.Dribble + Stats.Passes + Stats.Shooting;
                double averageStats = totalStats / 5;

                return Math.Round(averageStats);
            }
        }
    }
}
