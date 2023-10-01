using System;
using System.Collections.Generic;

namespace TestClient
{
    // Entrance Exam Preparation Task #6

    public class BankAccount
    {
        private int id;

        private double balance;

        public BankAccount()
        {

        }

        public int ID
        {
            get { return id; }
            set { id = value; }
        }

        public double Balance
        {
            get { return balance; }
            set { balance = value; }
        }

        public void Deposit(double amount)
        {
            this.balance += amount;
        }

        public void Withdraw(double amount)
        {
            this.balance -= amount;
        }

        public override string ToString()
        {
            return $"Account ID{this.id}, balance: {this.balance:F2}";
        }
    }

    public class Program
    {
        private static void CreateBankAccount(string[] bankAccountArguments, Dictionary<int, BankAccount> bankAccountsDictionary)
        {
            int bankAccountID = int.Parse(bankAccountArguments[1]);

            if (!bankAccountsDictionary.ContainsKey(bankAccountID))
            {
                BankAccount bankAccount = new BankAccount()
                {
                    ID = bankAccountID,
                };

                bankAccountsDictionary.Add(bankAccountID, bankAccount);
            }
            else
            {
                Console.WriteLine("Account already exists");
            }
        }

        private static void DepositToBankAccount(string[] bankAccountArguments, Dictionary<int, BankAccount> bankAccountsDictionary)
        {
            int bankAccountID = int.Parse(bankAccountArguments[1]);

            if (bankAccountsDictionary.ContainsKey(bankAccountID))
            {
                double balanceToDeposit = double.Parse(bankAccountArguments[2]);
                bankAccountsDictionary[bankAccountID].Deposit(balanceToDeposit);
            }
            else
            {
                Console.WriteLine("Account does not exist");
            }
        }

        private static void WithdrawFromBankAccount(string[] bankAccountArguments, Dictionary<int, BankAccount> bankAccountsDictionary)
        {
            int bankAccountID = int.Parse(bankAccountArguments[1]);

            if (bankAccountsDictionary.ContainsKey(bankAccountID))
            {
                double balanceToWithdraw = double.Parse(bankAccountArguments[2]);

                if (bankAccountsDictionary[bankAccountID].Balance < balanceToWithdraw)
                {
                    Console.WriteLine("Insufficient balance");
                }
                else
                {
                    bankAccountsDictionary[bankAccountID].Withdraw(balanceToWithdraw);
                }
            }
            else
            {
                Console.WriteLine("Account does not exist");
            }
        }

        private static void PrintBankAccountInfo(string[] bankAccountArguments, Dictionary<int, BankAccount> bankAccountsDictionary)
        {
            int bankAccountID = int.Parse(bankAccountArguments[1]);

            if (bankAccountsDictionary.ContainsKey(bankAccountID))
            {
                Console.WriteLine(bankAccountsDictionary[bankAccountID].ToString());
            }
            else
            {
                Console.WriteLine("Account does not exist");
            }
        }

        static void Main(string[] args)
        {
            string command = Console.ReadLine();

            Dictionary<int, BankAccount> bankAccountsToProcess = new Dictionary<int, BankAccount>();

            while (command != "End")
            {
                string[] commandArguments = command.Split();
                string commandType = commandArguments[0];

                switch (commandType)
                {
                    case "Create":
                        CreateBankAccount(commandArguments, bankAccountsToProcess);
                        break;
                    case "Deposit":
                        DepositToBankAccount(commandArguments, bankAccountsToProcess);
                        break;
                    case "Withdraw":
                        WithdrawFromBankAccount(commandArguments, bankAccountsToProcess);
                        break;
                    case "Print":
                        PrintBankAccountInfo(commandArguments, bankAccountsToProcess);
                        break;
                }

                command = Console.ReadLine();
            }
        }
    }
}
