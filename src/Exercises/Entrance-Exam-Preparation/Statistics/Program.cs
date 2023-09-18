using System;
using System.Collections.Generic;
using System.Linq;

namespace Statistics
{
    // Entrance Exam Preparation Task #3

    public class Person
    {
        /*
            
         */

        public Person(string name, int age)
        {
            Name = name;
            Age = age;
        }

        public string Name { get; set; }

        public int Age { get; set; }
    }

    public class Program
    {
        static void PrintPeopleStatistics(List<Person> people)
        {
            /*
                LINQ usage example
                filter objects of type 'Person', saved into a list by their age
                and by using a predicate to match the needed age
                then the filtered list is ordered alphabetically by the name of the people
             */

            List<Person> filteredPeopleForStatistics = people
                .Where(p => p.Age > 30)
                .OrderBy(p => p.Name)
                .ToList();

            foreach (Person person in filteredPeopleForStatistics)
            {
                Console.WriteLine($"{person.Name} - {person.Age}");
            }
        }

        static void Main(string[] args)
        {
            int numberOfPeopleForStatistics = int.Parse(Console.ReadLine());

            List<Person> peopleForStatistics = new List<Person>();

            while (numberOfPeopleForStatistics > 0)
            {
                string[] personStatisticsDetails = Console.ReadLine().Split().ToArray();
                string personName = personStatisticsDetails[0];
                int personAge = int.Parse(personStatisticsDetails[1]);

                Person person = new Person(personName, personAge);
                peopleForStatistics.Add(person);

                numberOfPeopleForStatistics--;
            }

            PrintPeopleStatistics(peopleForStatistics);
        }
    }
}
