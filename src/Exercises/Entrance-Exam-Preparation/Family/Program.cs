using System;
using System.Collections.Generic;
using System.Linq;

namespace Family
{
    // Entrance Exam Preparation Task #2

    public class Person
    {
        private string name;

        private int age;

        public Person(string name, int age)
        {
            this.Name = name;
            this.Age = age;
        }

        /*
            the usage of lambda expressions instead of the return statement is also possible
         */

        public string Name { get => name; set => name = value; }

        public int Age { get => age; set => age = value; }
    }

    public class Family
    {
        /*
            detailed encapsulation example (the commented lines of code) - a field and a property need to be explicitly defined
         */

        //private List<Person> familyMembers;

        //public Family()
        //{
        //    this.FamilyMembers = new List<Person>();
        //}

        //public List<Person> FamilyMembers
        //{
        //    get
        //    {
        //        return this.familyMembers;
        //    }

        //    set
        //    {
        //        this.familyMembers = value;
        //    }
        //}

        /*
            a simplified approach of properties initialization - through the short-hand syntax of getters and setters, which
            will hide the encapsulation internal implementation details
            such properties are called 'Auto-Implemented properties'
         */

        public List<Person> FamilyMembers { get; set; } = new List<Person>();
    }

    public class Program
    {
        // the requested static method with a 'Family' object dependency

        static void PrintFamilyMembersInfo(Family family)
        {
            List<Person> orderedFamilyMembersByName = family.FamilyMembers.OrderBy(fm => fm.Name).ToList();

            foreach (Person familyMember in orderedFamilyMembersByName)
            {
                Console.WriteLine($"{familyMember.Name} {familyMember.Age}");
            }
        }

        static void Main(string[] args)
        {
            int familyMembersCount = int.Parse(Console.ReadLine());

            Family family = new Family();

            /*
                note that the traditional for loop is also a good solution, when it comes to the retrieval
                of the information from a command array
            */

            //for (int i = 0; i < familyMembersCount; i++)
            //{
            //    string[] familyMemberInfo = Console.ReadLine().Split(' ').ToArray();
            //    string familyMemberName = familyMemberInfo[0];
            //    int familyMemberAge = int.Parse(familyMemberInfo[1]);

            //    Person newFamilyMember = new Person(familyMemberName, familyMemberAge);
            //    family.FamilyMembers.Add(newFamilyMember);
            //}

            while (familyMembersCount > 0)
            {
                string[] familyMemberInfo = Console.ReadLine().Split(' ').ToArray();
                string familyMemberName = familyMemberInfo[0];
                int familyMemberAge = int.Parse(familyMemberInfo[1]);

                Person newFamilyMember = new Person(familyMemberName, familyMemberAge);
                family.FamilyMembers.Add(newFamilyMember);

                familyMembersCount--;
            }

            /*
                static method invocation - the method is internal to the class 'Program'
             */

            PrintFamilyMembersInfo(family);
        }
    }
}
