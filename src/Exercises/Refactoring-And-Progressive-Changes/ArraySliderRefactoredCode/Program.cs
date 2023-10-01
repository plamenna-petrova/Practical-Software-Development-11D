using System;
using System.Linq;
using System.Numerics;
using System.Text.RegularExpressions;

namespace ArraySliderRefactoredCode
{
    public class Program
    {
        static void Main(string[] args)
        {
            string numbersInput = Console.ReadLine();

            BigInteger[] positiveIntegersArray = Regex
                .Split(numbersInput, "\\s+")
                .Where(n => n != "").Select(n => BigInteger.Parse(n))
                .ToArray();

            string arraySliderCommand = Console.ReadLine();

            long counter = 0;

            while (arraySliderCommand != "stop")
            {
                string[] arraySliderCommandOperationTokens = arraySliderCommand.Split(' ');

                long shifitingValue = long.Parse(arraySliderCommandOperationTokens[0]);
                string operation = arraySliderCommandOperationTokens[1];
                long operandValue = long.Parse(arraySliderCommandOperationTokens[2]);

                shifitingValue %= positiveIntegersArray.Length;
                counter += shifitingValue;

                long index = counter % positiveIntegersArray.Length;

                if (index < 0)
                {
                    index += positiveIntegersArray.Length;
                }

                if (index >= positiveIntegersArray.Length)
                {
                    index -= positiveIntegersArray.Length;
                }

                switch (operation)
                {
                    case "+":
                        if ((positiveIntegersArray[index] + operandValue) < 0)
                        {
                            positiveIntegersArray[index] = 0;
                        }
                        else
                        {
                            positiveIntegersArray[index] = positiveIntegersArray[index] + operandValue;
                        }
                        break;
                    case "-":
                        if (positiveIntegersArray[index] < operandValue)
                        {
                            positiveIntegersArray[index] = 0;
                        }
                        else
                        {
                            positiveIntegersArray[index] = positiveIntegersArray[index] - operandValue;
                        }
                        break;
                    case "*":
                        if ((positiveIntegersArray[index] * operandValue) < 0)
                        {
                            positiveIntegersArray[index] = 0;
                        }
                        else
                        {
                            positiveIntegersArray[index] = positiveIntegersArray[index] * operandValue;
                        }
                        break;
                    case "/":
                        if ((positiveIntegersArray[index] / operandValue) < 0)
                        {
                            positiveIntegersArray[index] = 0;
                        }
                        else
                        {
                            positiveIntegersArray[index] = positiveIntegersArray[index] / operandValue;
                        }
                        break;
                    case "&":
                        if ((positiveIntegersArray[index] & operandValue) < 0)
                        {
                            positiveIntegersArray[index] = 0;
                        }
                        else
                        {
                            positiveIntegersArray[index] = positiveIntegersArray[index] & operandValue;
                        }
                        break;
                    case "|":
                        if ((positiveIntegersArray[index] | operandValue) < 0)
                        {
                            positiveIntegersArray[index] = 0;
                        }
                        else
                        {
                            positiveIntegersArray[index] = positiveIntegersArray[index] | operandValue;
                        }
                        break;
                    case "^":
                        if ((positiveIntegersArray[index] ^ operandValue) < 0)
                        {
                            positiveIntegersArray[index] = 0;
                        }
                        else
                        {
                            positiveIntegersArray[index] = positiveIntegersArray[index] ^ operandValue;
                        }
                        break;
                }

                arraySliderCommand = Console.ReadLine();
            }

            for (int j = 0; j < positiveIntegersArray.Length; j++)
            {
                if (positiveIntegersArray[j] < 0)
                {
                    positiveIntegersArray[j] = 0;
                }
            }

            Console.WriteLine("[" + string.Join(", ", positiveIntegersArray) + "]");
        }
    }
}
