using System;

namespace SubstringWorkingSolution
{
    public class Program
    {
        public static void Main()
        {
            string text = Console.ReadLine();
            int jump = int.Parse(Console.ReadLine());

            const char Search = 'p';
            bool hasMatch = false;

            for (int i = 0; i < text.Length; i++)
            {
                if (text[i] == Search)
                {
                    hasMatch = true;

                    int endIndex = jump;

                    if (endIndex + i + 1 > text.Length)
                    {
                        endIndex = text.Length - i - 1;
                    }

                    string matchedString = text.Substring(i, endIndex + 1);
                    Console.WriteLine(matchedString);
                    i += jump;
                }
            }

            if (!hasMatch)
            {
                Console.WriteLine("no");
            }
        }
    }
}
