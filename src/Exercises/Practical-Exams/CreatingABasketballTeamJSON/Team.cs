using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CreatingABasketballTeamJSON
{
    public class Team
    {
        public Team(string name)
        {
            Name = name;
        }

        public string Name { get; set; }

        public double Rating
        {
            get
            {
                if (Players.Count == 0)
                {
                    return 0;
                }

                return Math.Round(Players.Average(p => p.AverageStats));
            }
        }

        public List<Player> Players { get; set; } = new List<Player>();      

        public void AddPlayer(Player player)
        {
            Players.Add(player);
        }

        public void RemovePlayer(Player player)
        {
            Players.Remove(player);
        }
    }
}
