using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PokemonTrainerJSON
{
    // The requirements and examples for this task can be found amidst the homework tasks for the first term
    // https://github.com/plamenna-petrova/Practical-Software-Development-11D/tree/master/src/Homeworks

    public class Trainer
    {
        public Trainer(string name)
        {
            Name = name;
        }

        public string Name { get; set; }

        public int Badges { get; set; }

        public List<Pokemon> Pokemons = new List<Pokemon>();
    }

    public class Pokemon
    {
        public Pokemon(string name, string element, int hp)
        {
            Name = name;
            Element = element;
            HP = hp;
        }

        public string Name { get; set; }

        public string Element { get; set; }

        public int HP { get; set; }
    }

    public class TrainerStats
    {
        [JsonProperty("trainer")]
        public string Name { get; set; }

        [JsonProperty("collectedBadges")]
        public int Badges { get; set; }

        [JsonProperty("collectedPokemons")]
        public int PokemonsCount { get; set; }
    }

    public class Program
    {
        static void Duel(List<Trainer> tournamentParticipants, string activeElement)
        {
            if (tournamentParticipants.Any(t => t.Pokemons.Any(p => p.Element == activeElement)))
            {
                List<Trainer> trainersWithElementalPokemon = tournamentParticipants
                    .Where(t => t.Pokemons.Any(p => p.Element == activeElement))
                    .ToList();

                foreach (Trainer trainerWithElementalPokemon in trainersWithElementalPokemon)
                {
                    trainerWithElementalPokemon.Badges += 1;
                }
            }
            else
            {
                List<Trainer> trainersWithNonElementalPokemon = tournamentParticipants
                    .Where(t => !t.Pokemons.Any(p => p.Element == activeElement))
                    .ToList();

                foreach (Trainer trainerWithNonElementalPokemon in trainersWithNonElementalPokemon)
                {
                    foreach (Pokemon pokemon in trainerWithNonElementalPokemon.Pokemons)
                    {
                        pokemon.HP -= 10;
                    }

                    List<Pokemon> pokemonsWithZeroOrLessHP = trainerWithNonElementalPokemon.Pokemons
                        .Where(p => p.HP <= 0)
                        .ToList();

                    if (pokemonsWithZeroOrLessHP.Any())
                    {
                        foreach (Pokemon fallenPokemon in pokemonsWithZeroOrLessHP)
                        {
                            trainerWithNonElementalPokemon.Pokemons.Remove(fallenPokemon);
                        }
                    }
                }
            }
        }

        static string SerializeListOfObjects<T>(List<T> listOfObjectsToSerialize)
        {
            try
            {
                return JsonConvert.SerializeObject(listOfObjectsToSerialize, Formatting.Indented);
            }
            catch (JsonException jsonException)
            {
                throw new Exception("Error serializing list of objects to JSON.", jsonException);
            }
        }

        static void Main(string[] args)
        {
            string[] pokemonTrainerInformationExampleJSONStringArrays = new string[]
            {
                @"
                    [
                       [""Pesho"", ""Charizard"", ""Fire"", ""100""],
                       [""Gosho"", ""Squirtle"", ""Water"", ""38""],
                       [""Pesho"", ""Pikachu"", ""Electricity"", ""10""],
                       [""Tournament""],
                       [""Fire""],
                       [""Electricity""],
                       [""End""]
                    ]
                ",
                @"
                    [
                       [""Stamat"", ""Blastoise"", ""Water"", ""18""],
                       [""Nasko"", ""Pickachu"", ""Electricity"", ""22""],
                       [""Jicata"", ""Kadabra"", ""Psychic"", ""90""],
                       [""Tournament""],
                       [""Fire""],
                       [""Electricity""],
                       [""Fire""],
                       [""End""]
                    ]
                "
            };

            foreach (var pokemonAndTrainerInformationExampleJSONString in pokemonTrainerInformationExampleJSONStringArrays)
            {
                JArray deserializedPokemonAndTrainerInformationJArray = JArray.Parse(pokemonAndTrainerInformationExampleJSONString);

                string[][] pokemonAndTrainerCommands = deserializedPokemonAndTrainerInformationJArray
                    .Select(commandTokensArray => commandTokensArray.Select(token => token.ToString()).ToArray())
                    .ToArray();

                List<Trainer> trainers = new List<Trainer>();

                for (int i = 0; i < pokemonAndTrainerCommands.Length; i++)
                {
                    if (pokemonAndTrainerCommands[i][0] == "Tournament")
                    {
                        bool isTournamentCommandsSendingActive = true;

                        while (isTournamentCommandsSendingActive)
                        {
                            string elementCommand = pokemonAndTrainerCommands[i + 1][0];

                            switch (elementCommand)
                            {
                                case "Fire":
                                case "Water":
                                case "Electricity":
                                    Duel(trainers, elementCommand);
                                    break;
                                case "End":
                                    isTournamentCommandsSendingActive = false;
                                    break;
                            }

                            i++;
                        }
                    }
                    else
                    {
                        string trainerName = pokemonAndTrainerCommands[i][0];
                        string pokemonName = pokemonAndTrainerCommands[i][1];
                        string pokemonElement = pokemonAndTrainerCommands[i][2];
                        int pokemonHP = int.Parse(pokemonAndTrainerCommands[i][3]);

                        Trainer trainer = trainers.Where(t => t.Name == trainerName).FirstOrDefault();
                        Pokemon pokemon = new Pokemon(pokemonName, pokemonElement, pokemonHP);

                        if (trainer == null)
                        {
                            trainer = new Trainer(trainerName);
                            trainer.Pokemons.Add(pokemon);
                            trainers.Add(trainer);
                        }
                        else
                        {
                            if (!trainer.Pokemons.Contains(pokemon))
                            {
                                trainer.Pokemons.Add(pokemon);
                            }
                        }
                    }
                }

                List<TrainerStats> trainersStats = trainers
                    .OrderByDescending(t => t.Badges)
                    .Select(t => new TrainerStats 
                    { 
                        Name = t.Name, 
                        Badges = t.Badges, 
                        PokemonsCount = t.Pokemons.Count 
                    })
                    .ToList();

                string serializedTrainersStatsJSONString = SerializeListOfObjects(trainersStats);

                StringBuilder trainersStatsStringBuilder = new StringBuilder()
                    .AppendLine("Trainers Stats (JSON format): \n")
                    .AppendLine(serializedTrainersStatsJSONString)
                    .AppendLine("\n" + new string('-', 50));

                Console.WriteLine(trainersStatsStringBuilder.ToString());
            }
        }
    }
}
