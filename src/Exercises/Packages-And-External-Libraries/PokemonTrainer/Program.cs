using System;
using System.Collections.Generic;
using System.Linq;

namespace PokemonTrainer
{
    // The requirements and examples for this task can be found amidst the homework tasks for the first term
    // https://github.com/plamenna-petrova/Practical-Software-Development-11D/tree/master/src/Homeworks

    public class Trainer
    {
        private string name;

        private int badges;

        private List<Pokemon> pokemons = new List<Pokemon>();

        public Trainer()
        {

        }

        public Trainer(string name) : this()
        {
            this.name = name;
        }

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public int Badges
        {
            get { return badges; }
            set { badges = value; }
        }

        public List<Pokemon> Pokemons
        {
            get { return pokemons; }
            set { pokemons = value; }
        }
    }

    public class Pokemon
    {
        private string name;

        private string element;

        private int hp;

        public Pokemon()
        {

        }

        public Pokemon(string name, string element, int hp)
        {
            this.name = name;
            this.element = element;
            this.hp = hp;
        }

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public string Element
        {
            get { return element; }
            set { element = value; }
        }

        public int HP
        {
            get { return hp; }
            set { hp = value; }
        }
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

        static void Main(string[] args)
        {
            bool isPokemonAndCommandsSendingActive = true;

            List<Trainer> trainers = new List<Trainer>();

            while (isPokemonAndCommandsSendingActive)
            {
                string[] pokemonAndTrainerInformation = Console.ReadLine().Split().ToArray();

                if (pokemonAndTrainerInformation[0] == "Tournament")
                {
                    bool isTournamentCommandsSendingActive = true;

                    while (isTournamentCommandsSendingActive)
                    {
                        string elementCommand = Console.ReadLine();

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
                    }

                    if (!isTournamentCommandsSendingActive)
                    {
                        isPokemonAndCommandsSendingActive = false;
                    }
                }
                else
                {
                    string trainerName = pokemonAndTrainerInformation[0];
                    string pokemonName = pokemonAndTrainerInformation[1];
                    string pokemonElement = pokemonAndTrainerInformation[2];
                    int pokemonHP = int.Parse(pokemonAndTrainerInformation[3]);

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

            if (!isPokemonAndCommandsSendingActive)
            {
                trainers.OrderByDescending(t => t.Badges)
                        .ToList()
                        .ForEach(t => Console.WriteLine($"{t.Name} {t.Badges} {t.Pokemons.Count}"));
            }
        }
    }
}
