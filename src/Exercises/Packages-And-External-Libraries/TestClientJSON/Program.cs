using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;

namespace TestClientJSON
{
    public class BankAccount
    {
        public int ID { get; set; }

        public double Balance { get; set; }

        public void Deposit(double amount)
        {
            Balance += amount;
        }

        public void Withdraw(double amount)
        {
            Balance -= amount;
        }

        public override string ToString()
        {
            return $"Account ID{ID}, balance {Balance:F2}";
        }
    }

    public class BankAccountStats
    {
        [JsonProperty("bankAccounts")]
        public Dictionary<int, BankAccount> BankAccounts { get; set; } = new Dictionary<int, BankAccount>();

        [JsonProperty("errors")]
        public List<string> Errors { get; set; } = new List<string>();
    }

    public class Program
    {
        static void Main(string[] args)
        {
            string[] testClientInformationExampleJSONArrays = new string[]
            {
                @"
                    [
                        ""Create 1"",
                        ""Create 1"",
                        ""Deposit 1 20"",
                        ""Withdraw 1 30"",
                        ""Withdraw 1 10"",
                        ""End""
                    ]    
                ",
                @"
                    [
                        ""Create 1"",
                        ""Deposit 2 20"",
                        ""Withdraw 2 30"",
                        ""End""
                    ]
                "
            };

            foreach (var testClientInformationExampleJSONArray in testClientInformationExampleJSONArrays)
            {
                JArray deserializedTestClientInformationExampleJArray = JArray.Parse(testClientInformationExampleJSONArray);

                string[] testClientCommands = deserializedTestClientInformationExampleJArray
                    .Select(c => c.ToString())
                    .ToArray();

                BankAccountStats bankAccountStats = new BankAccountStats();

                foreach (var testClientCommand in testClientCommands)
                {
                    string[] testClientCommandTokens = testClientCommand.Split().ToArray();

                    switch (testClientCommandTokens[0])
                    {
                        case "Create":
                            int bankAccountCreationID = int.Parse(testClientCommandTokens[1]);

                            if (bankAccountStats.BankAccounts.ContainsKey(bankAccountCreationID))
                            {
                                bankAccountStats.Errors.Add("Account already exists");
                            }
                            else
                            {
                                BankAccount bankAccountToCreate = new BankAccount() { ID = bankAccountCreationID };
                                bankAccountStats.BankAccounts.Add(bankAccountCreationID, bankAccountToCreate);
                            }
                            break;
                        case "Deposit":
                            int bankAccountDepositID = int.Parse(testClientCommandTokens[1]);

                            if (!bankAccountStats.BankAccounts.ContainsKey(bankAccountDepositID))
                            {
                                bankAccountStats.Errors.Add("Account does not exist");
                            }
                            else
                            {
                                int depositAmount = int.Parse(testClientCommandTokens[2]);
                                bankAccountStats.BankAccounts[bankAccountDepositID].Deposit(depositAmount);
                            }
                            break;
                        case "Withdraw":
                            int bankAccountWithdrawID = int.Parse(testClientCommandTokens[1]);

                            if (!bankAccountStats.BankAccounts.ContainsKey(bankAccountWithdrawID))
                            {
                                bankAccountStats.Errors.Add("Account does not exist");
                            }
                            else
                            {
                                int withdrawAmount = int.Parse(testClientCommandTokens[2]);

                                if (bankAccountStats.BankAccounts[bankAccountWithdrawID].Balance < withdrawAmount)
                                {
                                    bankAccountStats.Errors.Add("Insufficient balance");
                                }
                                else
                                {
                                    bankAccountStats.BankAccounts[bankAccountWithdrawID].Withdraw(withdrawAmount);
                                }
                            }
                            break;
                    }
                }

                Console.WriteLine(JsonConvert.SerializeObject(bankAccountStats, Formatting.Indented));
            }
        }
    }
}
