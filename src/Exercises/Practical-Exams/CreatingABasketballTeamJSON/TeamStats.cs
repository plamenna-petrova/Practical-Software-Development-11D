using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace CreatingABasketballTeamJSON
{
    public class TeamStats
    {
        [JsonProperty("team")]
        public string Team { get; set; }

        [JsonProperty("averagePlayersStatistics")]
        public double Average { get; set; }

        [JsonProperty("errors")]
        public List<string> Errors { get; set; } = new List<string>(); 
    }
}
