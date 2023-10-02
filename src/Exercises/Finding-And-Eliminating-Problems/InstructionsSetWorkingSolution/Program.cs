using System;

namespace InstructionsSetWorkingSolution
{
    public class Program
    {
        static void Main(string[] args)
        {
            string operationCode = Console.ReadLine();

            while (operationCode != "END")
            {
                string[] codeArgs = operationCode.Split(' ');

                long result = 0;

                switch (codeArgs[0])
                {
                    case "INC":
                    {
                       int operandOne = int.Parse(codeArgs[1]);
                       result = ++operandOne;
                       break;
                    }
                    case "DEC":
                    {
                       int operandOne = int.Parse(codeArgs[1]);
                       result = --operandOne;
                       break;
                    }
                    case "ADD":
                    {
                       int operandOne = int.Parse(codeArgs[1]);
                       int operandTwo = int.Parse(codeArgs[2]);
                       result = operandOne + operandTwo;
                       break;
                    }
                    case "MLA":
                    {
                       int operandOne = int.Parse(codeArgs[1]);
                       int operandTwo = int.Parse(codeArgs[2]);
                       result = (long)operandOne * operandTwo;
                       break;
                    }
                }

                Console.WriteLine(result);

                operationCode = Console.ReadLine();
            }
        }
    }
}
