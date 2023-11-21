using System;

namespace BitCarouselWorkingSolution
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

                switch (direction)
                {
                    case "right":
                        int rightmostBit = number & 1; 
                        number >>= 1;
                        number |= (byte)(rightmostBit << 5);
                        number &= 63;
                        break;
                    case "left":
                        int leftmostBit = (number >> 5) & 1;
                        number <<= 1;
                        number |= (byte)leftmostBit;
                        number &= 63;
                        break;
                }
            }

            Console.WriteLine(number);
        }
    }
}
