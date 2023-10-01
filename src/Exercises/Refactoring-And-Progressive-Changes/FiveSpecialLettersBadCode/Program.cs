using System;
using System.Collections.Generic;

internal class Program
{

    private static int letterWeight(char input)
    {
        if (input == 'a')
            return 5;
        if (input == 'b')
            return -12;
        if (input == 'c')
            return 47;
        if (input == 'd')
            return 7;
        if (input == 'e')
            return -32;

        return 0;
    }

    private static int weight(char[] input)
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
            output += (i + 1) * letterWeight(word[i]);

        }
        return output;


    }

    private static void Main()
    {
        int start = int.Parse(Console.ReadLine());
        int end = int.Parse(Console.ReadLine());

        char[] words = { 'a', 'a', 'a', 'a', 'a' };

        List<string> output = new List<string>();

        int[] interator = new int[5];


        for (; ; )
        {
            if (start <= weight(words) && weight(words) <= end)
            {
                output.Add(new string(words));
            }


            if (interator[0] < 5)
            {
                words[0] = (char)((int)'a' + interator[0]);
                interator[0]++;
            }
            else
            {
                if (interator[1] < 5)
                {
                    words[1] = (char)((int)'a' + interator[1]);
                    interator[1]++;
                }
                else
                {
                    if (interator[2] < 5)
                    {
                        words[2] = (char)((int)'a' + interator[2]);
                        interator[2]++;
                    }
                    else
                    {
                        if (interator[3] < 5)
                        {
                            words[3] = (char)((int)'a' + interator[3]);
                            interator[3]++;
                        }
                        else
                        {
                            if (interator[4] < 5)
                            {
                                words[4] = (char)((int)'a' + interator[4]);
                                interator[4]++;
                            }
                            else
                                break;
                            interator[3] = 0;
                        }

                        interator[2] = 0;
                    }

                    interator[1] = 0;
                }

                interator[0] = 0;
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