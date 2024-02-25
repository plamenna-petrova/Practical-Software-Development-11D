using System;
using System.Collections.Generic;
using System.Linq;

namespace PokemonTrainerOptimized
{
    public class Pokemon
    {
        public string Name { get; set; }  

        public string Element { get; set; }

        public int HP { get; set; }
    }

    public class Trainer
    {
        public string Name { get; set; }
        
        public int Badges { get; set; }

        public List<Pokemon> Pokemons { get; set; } = new List<Pokemon>();
    }

    public class Program
    {
        static void Main(string[] args)
        {
            List<Trainer> trainers = new List<Trainer>();

            bool isPokemonTrainersSendingActive = true;

            while (isPokemonTrainersSendingActive)
            {
                string[] pokemonTrainersCommandTokens = Console.ReadLine().Split().ToArray();

                if (pokemonTrainersCommandTokens[0] == "Tournament")
                {
                    string tournamentCommand = Console.ReadLine();

                    while (tournamentCommand != "End")
                    {
                        switch (tournamentCommand)
                        {
                            case "Fire":
                            case "Water":
                            case "Electricity":
                                bool anyTrainersWithElementalPokemon = trainers.Any(t => t.Pokemons.Any(p => p.Element == tournamentCommand));

                                if (anyTrainersWithElementalPokemon)
                                {
                                    var trainersWithElementalPokemon = trainers
                                        .Where(t => t.Pokemons.Any(p => p.Element == tournamentCommand))
                                        .ToList();

                                    foreach (var trainerWithElementalPokemon in trainersWithElementalPokemon)
                                    {
                                        trainerWithElementalPokemon.Badges += 1;
                                    }
                                }
                                else
                                {
                                    var trainersWithNonElementalPokemon = trainers
                                        .Where(t => !t.Pokemons.Any(p => p.Element == tournamentCommand))
                                        .ToList();

                                    foreach (var trainerWithNonElementalPokemon in trainersWithNonElementalPokemon)
                                    {
                                        foreach (var pokemon in trainerWithNonElementalPokemon.Pokemons)
                                        {
                                            pokemon.HP -= 10;
                                        }

                                        var pokemonsWithZeroOrLessHP = trainerWithNonElementalPokemon.Pokemons
                                            .Where(p => p.HP <= 0)
                                            .ToList();

                                        if (pokemonsWithZeroOrLessHP.Any())
                                        {
                                            foreach (var fallenPokemon in pokemonsWithZeroOrLessHP)
                                            {
                                                trainerWithNonElementalPokemon.Pokemons.Remove(fallenPokemon);
                                            }
                                        }
                                    }
                                }
                                break;
                        }

                        tournamentCommand = Console.ReadLine();
                    }

                    isPokemonTrainersSendingActive = false;
                }
                else
                {
                    string trainerName = pokemonTrainersCommandTokens[0];
                    string pokemonName = pokemonTrainersCommandTokens[1];
                    string pokemonElement = pokemonTrainersCommandTokens[2];
                    int pokemonHP = int.Parse(pokemonTrainersCommandTokens[3]);

                    Trainer trainer = trainers.FirstOrDefault(t => t.Name == trainerName);

                    Pokemon pokemonToAdd = new Pokemon
                    {
                        Name = pokemonName,
                        Element = pokemonElement,
                        HP = pokemonHP,
                    };

                    if (trainer == null)
                    {
                        trainer = new Trainer() { Name = trainerName };
                        trainer.Pokemons.Add(pokemonToAdd);
                        trainers.Add(trainer);
                    }
                    else
                    {
                        if (!trainer.Pokemons.Contains(pokemonToAdd))
                        {
                            trainer.Pokemons.Add(pokemonToAdd);
                        }
                    }
                }
            }

            if (!isPokemonTrainersSendingActive)
            {
                foreach (var trainer in trainers.OrderByDescending(t => t.Badges).ToList())
                {
                    Console.WriteLine($"{trainer.Name} {trainer.Badges} {trainer.Pokemons.Count}");
                }
            }
        }
    }
}
