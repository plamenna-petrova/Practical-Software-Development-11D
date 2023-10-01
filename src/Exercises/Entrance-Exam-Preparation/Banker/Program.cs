using System;
using System.Collections.Generic;
using System.Linq;

namespace Banker
{
    // Entrance Exam Preparation Task #10

    public static class Bank
    {
        private static List<BankAccount> bankAccounts;

        static Bank()
        {
            bankAccounts = new List<BankAccount>();
        }

        public static List<BankAccount> BankAccounts
        {
            get
            {
                return bankAccounts;
            }

            set
            {
                bankAccounts = value;
            }
        }

        public static void Widthdraw(int bankAccountID, List<BankAccount> bankAccounts, double amountToWithdraw)
        {
            if (BankAccountExists(bankAccountID))
            {
                BankAccount foundBankAccount = bankAccounts.Where(ba => ba.ID == bankAccountID).First();

                if (foundBankAccount.Balance < amountToWithdraw)
                {
                    Console.WriteLine("Not enough balance");
                }
                else
                {
                    foundBankAccount.Withdraw(amountToWithdraw);
                    Console.WriteLine(foundBankAccount.ToString());
                }
            }
            else
            {
                Console.WriteLine($"Bank Account with ID {bankAccountID} does not exist");
            }
        }

        public static void Deposit(int bankAccountID, List<BankAccount> bankAccounts, double amountToDeposit)
        {
            if (BankAccountExists(bankAccountID))
            {
                BankAccount foundBankAccount = bankAccounts.Where(ba => ba.ID == bankAccountID).First();
                foundBankAccount.Deposit(amountToDeposit);
                Console.WriteLine(foundBankAccount.ToString());
            }
            else
            {
                Console.WriteLine($"Bank Account with ID {bankAccountID} does not exist");
            }
        }

        private static bool BankAccountExists(int bankAccountID)
        {
            if (BankAccounts.Any(ba => ba.ID == bankAccountID))
            {
                return true;
            }

            return false;
        }
    }

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
            return $"Account {this.id}, balance: {this.balance}";
        }
    }

    public class Program
    {
        static void Main(string[] args)
        {
            BankAccount bankAccount = new BankAccount
            {
                ID = 1
            };

            Bank.BankAccounts.Add(bankAccount);

            Bank.Deposit(1, Bank.BankAccounts, 15);
            Bank.Widthdraw(1, Bank.BankAccounts, 10);
            Bank.Widthdraw(1, Bank.BankAccounts, 20);
        }
    }
}