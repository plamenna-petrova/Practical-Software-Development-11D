using System;
using System.Collections.Generic;

namespace Introduction
{
    public class Person
    {
        private string firstName;

        private string lastName;

        private int age;

        private List<string> details;

        public Person(string firstName, string lastName, int age, List<string> details)
        {
            this.FirstName = firstName;
            this.Age = age;
            this.LastName = lastName;
            this.Details = details;
        }

        public string FirstName
        {
            get
            {
                return this.firstName;
            }

            set
            {
                this.firstName = value;
            }
        }

        public string LastName
        {
            get
            {
                return this.lastName;
            }

            set
            {
                this.lastName = value;
            }
        }

        public int Age
        {
            get
            {
                return this.age;
            }

            set
            {
                this.age = value;
            }
        }

        public List<string> Details
        {
            get
            {
                return this.details;
            }

            set
            {
                this.details = value;
            }
        }
    }

    public class Program
    {
        static void Main(string[] args)
        {
            string firstName = Console.ReadLine();
            string lastName = Console.ReadLine();
            int age = int.Parse(Console.ReadLine());

            List<string> details = new List<string>
            {
                "I am a recent graduate from the University of Veliko Tarnovo." +
                "There I have studied Software Engineering as a bachelor degree",
                "I am currently working as a Software Developer with C# and .NET",
                "My work involves developing desktop and web applications",
                "I am working forward to working with you in the Practical Software Development course"
            };

            Person teacherInCourse = new Person(firstName, lastName, age, details);

            Console.WriteLine("Greetings");

            Console.WriteLine($"Name: {teacherInCourse.FirstName} {teacherInCourse.LastName}" +
                $"\nAge:{teacherInCourse.Age}");

            for (int i = 0; i < teacherInCourse.Details.Count; i++)
            {
                var detail = teacherInCourse.Details[i];

                Console.WriteLine($"{i + 1}. {detail}");
            }
        }
    }
}