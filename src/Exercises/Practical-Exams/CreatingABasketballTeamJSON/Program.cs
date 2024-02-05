using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;

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
                throw new Exception("Error serailizing object to JSON.", jsonException);
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
                ",
                @"
                    [
                        ""Add;Sacramento Kings;Sasha Vezenkov;;75;85;84;92;67"",
                        ""Team;Sacramento Kings"",
                        ""Add;Sacramento Kings;Sasha Vezenkov;;75;85;84;92;67"",
                        ""Add;Sacramento Kings;;Colby Jones;195;82;82;89;68"",
                        ""Remove;Sacramento Kings;Colby Jones"",
                        ""END""
                    ]
                ",
                @"
                    [
                        ""Team;Sacramento Kings"",
                        ""Team;Sacramento Kings"",
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

                            if (team == null)
                            {
                                team = new Team(teamName);
                                teamStats.Team = team.Name;
                            }
                            else
                            {
                                teamStats.Errors.Add($"The team is already created as {team.Name}.");
                            }
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
                                    teamStats.Errors.Add($"Team {teamToAddPlayerName} does not exists.");
                                }
                                else
                                {
                                    string playerName = teamCommandTokens[2];

                                    if (string.IsNullOrWhiteSpace(playerName))
                                    {
                                        teamStats.Errors.Add("The player name should not be empty");
                                        continue;
                                    }

                                    Player playerToFind = team.Players.FirstOrDefault(p => p.Name == playerName);

                                    if (playerToFind != null)
                                    {
                                        teamStats.Errors.Add($"Player with name {playerToFind.Name} is already in team {team.Name}");
                                        continue;
                                    }

                                    int playerEndurance = int.Parse(teamCommandTokens[3]);

                                    if (playerEndurance < MinStatsEntryValue || playerEndurance > MaxStatsEntryValue)
                                    {
                                        teamStats.Errors.Add($"Endurance should be between {MinStatsEntryValue} and {MaxStatsEntryValue}.");
                                        continue;
                                    }

                                    int playerSprint = int.Parse(teamCommandTokens[4]);

                                    if (playerSprint < MinStatsEntryValue || playerSprint > MaxStatsEntryValue)
                                    {
                                        teamStats.Errors.Add($"Sprint should be between {MinStatsEntryValue} and {MaxStatsEntryValue}.");
                                        continue;
                                    }

                                    int playerDribble = int.Parse(teamCommandTokens[5]);

                                    if (playerDribble < MinStatsEntryValue || playerDribble > MaxStatsEntryValue)
                                    {
                                        teamStats.Errors.Add($"Dribble should be between {MinStatsEntryValue} and {MaxStatsEntryValue}.");
                                        continue;
                                    }

                                    int playerPasses = int.Parse(teamCommandTokens[6]);

                                    if (playerPasses < MinStatsEntryValue || playerPasses > MaxStatsEntryValue)
                                    {
                                        teamStats.Errors.Add($"Passes should be between {MinStatsEntryValue} and {MaxStatsEntryValue}.");
                                        continue;
                                    }

                                    int playerShooting = int.Parse(teamCommandTokens[7]);

                                    if (playerShooting < MinStatsEntryValue || playerShooting > MaxStatsEntryValue)
                                    {
                                        teamStats.Errors.Add($"Shooting should be between {MinStatsEntryValue} and {MaxStatsEntryValue}.");
                                        continue;
                                    }

                                    Stats playerStats = new Stats(playerEndurance, playerSprint, playerDribble, playerPasses, playerShooting);
                                    Player player = new Player(playerName, playerStats);

                                    team.AddPlayer(player);
                                }
                            }
                            break;
                        case "Remove":
                            if (team == null)
                            {
                                teamStats.Errors.Add("The team hasn't been created yet.");
                            }
                            else
                            {
                                string teamToRemovePlayerName = teamCommandTokens[1];

                                if (team.Name != teamToRemovePlayerName)
                                {
                                    teamStats.Errors.Add($"Team {teamToRemovePlayerName} does not exists.");
                                }
                                else
                                {
                                    string playerName = teamCommandTokens[2];
                                    Player playerToRemove = team.Players.FirstOrDefault(p => p.Name == playerName);

                                    if (playerToRemove == null)
                                    {
                                        teamStats.Errors.Add($"Player {playerName} is not in the {team.Name} team.");
                                    }
                                    else
                                    {
                                        team.RemovePlayer(playerToRemove);
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
                                teamStats.Average = team.Rating;
                                string serializedTeamStatsJSONString = SerializeObject(teamStats);
                                Console.WriteLine(serializedTeamStatsJSONString);
                            }
                            break;
                    }
                }
            }
        }
    }
}
