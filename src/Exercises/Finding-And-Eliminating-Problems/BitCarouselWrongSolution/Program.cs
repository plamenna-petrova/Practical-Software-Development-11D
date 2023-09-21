using System;

namespace BitCarouselWrongSolution
{
    public class Program
    {
        static void Main(string[] args)
        {
            byte number = byte.Parse(Console.ReadLine());
            byte rotations = byte.Parse(Console.ReadLine());

            for (int i = 0; i < rotations; i++)
            {
                string direction = Console.ReadLine();

                if (direction == "right")
                {
                    int rightMostBit = number & 1;
                    number >>= 1;
                    number |= (byte)(rightMostBit << 6);
                }
                else if (direction == "left")
                {
                    int leftMostBit = (number >> 6) & 1;
                    number <<= 1;
                    number |= (byte)leftMostBit;
                }
            }

            Console.WriteLine(number);
        }
    }
}
