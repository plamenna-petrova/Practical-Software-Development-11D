using System;
using System.Collections.Generic;
using System.Linq;

namespace PersonWithBankAccounts
{
    public class BankAccount
    {
        public BankAccount(int id, double balance)
        {
            ID = id;
            Balance = balance;
        }

        public int ID { get; set; }

        public double Balance { get; set; }
    }

    public class Person
    {
        public Person(string name, int age, List<BankAccount> accounts)
        {
            Name = name;
            Age = age;
            Accounts = accounts;    
        }

        public string Name { get; set; }

        public int Age { get; set; }

        public List<BankAccount> Accounts { get; set; }

        public double GetBalance()
        {
            return Accounts.Sum(a => a.Balance);
        }
    }

    public class Program
    {
        static void Main(string[] args)
        {
            List<BankAccount> bankAccountsOfPerson = new List<BankAccount>()
            {
                new BankAccount(1, 10000230.000),
                new BankAccount(2, 50023230.000),
                new BankAccount(3, 75034343.034)
            };

            Person person = new Person("Christopher Nolan", 53, bankAccountsOfPerson);

            Console.WriteLine($"Balance: {person.GetBalance()}");
        }
    }
}
