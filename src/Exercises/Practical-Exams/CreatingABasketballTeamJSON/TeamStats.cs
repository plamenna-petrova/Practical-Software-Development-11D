using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace CreatingABasketballTeamJSON
{
    public class TeamStats
    {
        public string Team { get; set; }

        public double Average { get; set; }

        public List<string> Errors { get; set; } = new List<string>(); 
    }
}
