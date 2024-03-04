using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Linq;

namespace CreatingABasketballTeamJSON
{
    public class Program
    {
        static string SerializeObject<T>(T objectToSerialize)
        {
            try
            {
                return JsonConvert.SerializeObject(objectToSerialize, Formatting.Indented);
            }
            catch (JsonException jsonException)
            {
                throw new Exception("Error serializing object to JSON.", jsonException);
            }
        }

        static void Main(string[] args)
        {
            const int MinStatsEntryValue = 0;

            const int MaxStatsEntryValue = 100;

            string[] teamCommandsExampleJSONStringArray = new string[]
            {
                @"
                    [
                        ""Team;Sacramento Kings"",
                        ""Add;Sacramento Kings Roster;Sasha Vezenkov;75;85;84;92;67"",
                        ""Add;Sacramento Kings;Sasha Vezenkov;75;85;84;92;67"",
                        ""Add;Sacramento Kings;Jordan Ford;95;82;82;89;68"",
                        ""Add;Sacramento Kings;Sasha Vezenkov;75;85;84;92;67"",
                        ""Remove;Sacramento Kings;Jordan Ford"",
                        ""END""
                    ]
                "
            };

            foreach (string teamCommandsExampleJSONString in teamCommandsExampleJSONStringArray)
            {
                JArray deserializedTeamCommandsJArray = JArray.Parse(teamCommandsExampleJSONString);

                string[] teamCommands = deserializedTeamCommandsJArray
                    .Select(command => command.ToString())
                    .ToArray();

                Team team = null;

                TeamStats teamStats = new TeamStats();

                foreach (var teamCommand in teamCommands)
                {
                    string[] teamCommandTokens = teamCommand.Split(new char[] { ';' }, StringSplitOptions.RemoveEmptyEntries);

                    switch (teamCommandTokens[0])
                    {
                        case "Team":
                            string teamName = teamCommandTokens[1];

                            if (string.IsNullOrWhiteSpace(teamName))
                            {
                                teamStats.Errors.Add("The team name should not be empty");
                                continue;
                            }

                            // ...
                            break;
                        case "Add":
                            if (team == null)
                            {
                                teamStats.Errors.Add("The team hasn't been created yet.");
                            }
                            else
                            {
                                string teamToAddPlayerName = teamCommandTokens[1];

                                if (team.Name != teamToAddPlayerName)
                                {
                                    // ...
                                }
                                else
                                {
                                    string playerName = teamCommandTokens[2];

                                    // ...

                                    Player playerToFind = team.Players.FirstOrDefault(p => p.Name == playerName);

                                    if (playerToFind != null)
                                    {
                                        // ...
                                        continue;
                                    }

                                    int playerEndurance = int.Parse(teamCommandTokens[3]);

                                    if (playerEndurance < MinStatsEntryValue || playerEndurance > MaxStatsEntryValue)
                                    {
                                        teamStats.Errors.Add($"Endurance should be between {MinStatsEntryValue} and {MaxStatsEntryValue}.");
                                        continue;
                                    }

                                    // ...
                                }
                            }
                            break;
                        case "Remove":
                            if (team == null)
                            {
                                // ...
                            }
                            else
                            {
                                string teamToRemovePlayerName = teamCommandTokens[1];

                                if (team.Name != teamToRemovePlayerName)
                                {
                                    // ...
                                }
                                else
                                {
                                    string playerName = teamCommandTokens[2];
                                    Player playerToRemove = team.Players.FirstOrDefault(p => p.Name == playerName);

                                    if (playerToRemove == null)
                                    {
                                        // ...
                                    }
                                    else
                                    {
                                        // ...
                                    }
                                }
                            }
                            break;
                        case "END":
                            if (team == null)
                            {
                                teamStats.Errors.Add("The team hasn't been created yet.");
                            }
                            else
                            {
                                // ...
                            }
                            break;
                    }
                }
            }
        }
    }
}
