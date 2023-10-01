using System;
using System.Collections.Generic;

namespace DataCheck
{
    // Entrance Exam Preparation Task #7

    public class Person
    {
        private string firstName;

        private string lastName;

        private int age;

        private double salary;

        public Person(string firstName, string lastName, int age, double salary)
        {
            this.FirstName = firstName;
            this.LastName = lastName;
            this.Age = age;
            this.Salary = salary;
        }

        public string FirstName
        {
            get
            {
                return this.firstName;
            }

            set
            {
                if (value.Length < 3)
                {
                    throw new ArgumentException("First name cannot be less than 3 symbols");
                }

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
                if (value.Length < 3)
                {
                    throw new ArgumentException("Last name cannot be less than 3 symbols");
                }

                this.lastName = value;
            }
        }

        public int Age
        {
            get
            {
                return age;
            }

            set
            {
                if (value <= 0)
                {
                    throw new ArgumentException("Age cannot be zero or negative integer");
                }

                this.age = value;
            }
        }

        public double Salary
        {
            get
            {
                return this.salary;
            }

            set
            {
                if (value < 460)
                {
                    throw new ArgumentException("Salary cannot be less than 460 leva");
                }

                this.salary = value;
            }
        }

        public void IncreaseSalary(double bonus)
        {
            if (this.Age < 30)
            {
                Salary += ((bonus / 100) * this.Salary) / 2;
            }
            else
            {
                Salary += (bonus / 100) * this.Salary;
            }
        }

        public override string ToString()
        {
            return $"{FirstName} {LastName} get {Salary:F2} leva";
        }
    }

    public class Program
    {
        static void Main(string[] args)
        {
            var lines = int.Parse(Console.ReadLine());
            var people = new List<Person>();

            for (int i = 0; i < lines; i++)
            {
                var personArguments = Console.ReadLine().Split();

                var person = new Person(personArguments[0],
                                        personArguments[1],
                                        int.Parse(personArguments[2]),
                                        double.Parse(personArguments[3])
                             );

                people.Add(person);
            }

            var bonus = double.Parse(Console.ReadLine());

            people.ForEach(p =>
            {
                p.IncreaseSalary(bonus);
                Console.WriteLine(p.ToString());
            });
        }
    }
}
