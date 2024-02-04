using System;
using System.Collections.Generic;

public class Program
{
    private static int GetLetterWeight(char input)
    {
        switch (input)
        {
            case 'a':
                return 5;
            case 'b':
                return -12;
            case 'c':
                return 47;
            case 'd':
                return 7;
            case 'e':
                return -32;
            default:
                return 0;
        }
    }

    private static int GetWordsWeight(char[] input)
    {
        List<char> word = new List<char>();

        for (int i = 0; i < input.Length; i++)
        {
            word.Add(input[i]);
        }

        for (int i = 0; i < word.Count; i++)
        {
            for (int j = i + 1; j < word.Count; j++)
            {
                if (word[i] == word[j])
                {
                    word.RemoveAt(j);
                    j--;
                }
            }
        }

        int output = 0;

        for (int i = 0; i < word.Count; i++)
        {
            output += (i + 1) * GetLetterWeight(word[i]);
        }

        return output;
    }

    private static void AppendCharactersToWordsArray(char[] wordCharactersArray, int[] iteratorsValuesArray)
    {
        for (int c = 0; c < wordCharactersArray.Length; c++)
        {
            wordCharactersArray[c] = (char)('a' + iteratorsValuesArray[c]); 
        }
    }

    private static void Main()
    {
        int start = int.Parse(Console.ReadLine());
        int end = int.Parse(Console.ReadLine());

        char[] words = { 'a', 'a', 'a', 'a', 'a' };

        List<string> output = new List<string>();

        for (int i = 0; i < 5; i++)
        {
            for (int j = 0; j < 5; j++)
            {
                for (int k = 0; k < 5; k++)
                {
                    for (int p = 0; p < 5; p++)
                    {
                        for (int q = 0; q < 5; q++)
                        {
                            AppendCharactersToWordsArray(words, new int[] { i, j, k, p, q });

                            if (start <= GetWordsWeight(words) && GetWordsWeight(words) <= end)
                            {
                                output.Add(new string(words));
                            }
                        }
                    }
                }
            }
        }

        if (output.Count != 0)
        {
            output.Sort();

            for (int i = 0; i < output.Count; i++)
            {
                if (i + 1 != output.Count)
                {
                    if (output[i] == output[i + 1])
                    {
                        output.RemoveAt(i);
                        i--;
                    }
                }
            }

            foreach (var item in output)
            {
                Console.Write(item + " ");
            }
        }
        else
        {
            Console.WriteLine("No");
        }
    }
}