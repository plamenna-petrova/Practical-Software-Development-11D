using System;

namespace DefinePersonClass
{
    // Entrance Exam Preparation Task #1

    public class Person
    {
        /* 
            the most basic approach for class definition - public fields 
        */

        public string name;

        public int age;
    }

    public class Program
    {
        static void Main(string[] args)
        {
            Person firstPerson = new Person
            {
                name = "Pesho",
                age = 20
            };

            Person secondPerson = new Person
            {
                name = "Gohso",
                age = 18
            };

            Person thirdPerson = new Person
            {
                name = "Stamat",
                age = 43
            };
        }
    }
}
