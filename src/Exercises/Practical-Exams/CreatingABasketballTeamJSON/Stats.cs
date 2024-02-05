using System;
using System.Collections.Generic;
using System.Text;

namespace CreatingABasketballTeamJSON
{
    public class Stats
    {
        public Stats(int endurance, int sprint, int dribble, int passes, int shooting)
        {
            Endurance = endurance;
            Sprint = sprint;
            Dribble = dribble;
            Passes = passes;
            Shooting = shooting;
        }

        public int Endurance { get; set; }

        public int Sprint { get; set; }

        public int Dribble { get; set; }

        public int Passes { get; set; }

        public int Shooting { get; set; }
    }
}
