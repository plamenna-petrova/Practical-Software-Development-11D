using System;

namespace Methods
{
    class Methods
    {
        static double CalculateTriangleArea(double a, double b, double c)
        {
            if (a <= 0 || b <= 0 || c <= 0)
            {
                Console.Error.WriteLine("Sides should be positive.");
                return -1;
            }

            double s = (a + b + c) / 2;
            double area = Math.Sqrt(s * (s - a) * (s - b) * (s - c));

            return area;
        }

        static string NumberToDigit(int number)
        {
            switch (number)
            {
                case 0: 
                    return "zero";
                case 1: 
                    return "one";
                case 2: 
                    return "two";
                case 3: 
                    return "three";
                case 4: 
                    return "four";
                case 5: 
                    return "five";
                case 6: 
                    return "six";
                case 7: 
                    return "seven";
                case 8: 
                    return "eight";
                case 9: 
                    return "nine";
                default:
                    return "Invalid number";
            }
        }

        static int FindMax(params int[] elements)
        {
            if (elements == null || elements.Length == 0)
            {
                return -1;
            }

            int max = elements[0];

            for (int i = 1; i < elements.Length; i++)
            {
                if (elements[i] > max)
                {
                    max = elements[i];
                }
            }

            return max;
        }

        static void PrintAsNumber(object number, string format)
        {
            if (format == "f")
            {
                Console.WriteLine("{0:f2}", number);
            }
            if (format == "%")
            {
                Console.WriteLine("{0:p0}", number);
            }
            if (format == "r")
            {
                Console.WriteLine("{0,8}", number);
            }
        }

        static double CalculateDistanceBetweenPointsByCoordinates(
            double[] coordinates, out bool isHorizontal, out bool isVertical
        )
        {
            isHorizontal = (coordinates[1] == coordinates[3]);
            isVertical = (coordinates[0] == coordinates[2]);

            double distance = Math.Sqrt(
                (coordinates[2] - coordinates[0]) * (coordinates[2] - coordinates[2]) + 
                (coordinates[3] - coordinates[1]) * (coordinates[3] - coordinates[1])
            );

            return distance;
        }

        static void Main()
        {
            Console.WriteLine(CalculateTriangleArea(3, 4, 5));

            Console.WriteLine(NumberToDigit(5));

            Console.WriteLine(FindMax(5, -1, 3, 2, 14, 2, 3));

            PrintAsNumber(1.3, "f");
            PrintAsNumber(0.75, "%");
            PrintAsNumber(2.30, "r");

            Console.WriteLine(
                CalculateDistanceBetweenPointsByCoordinates(
                    new double[] { 3, -1, 3, 2.5 }, 
                    out bool horizontal, 
                    out bool vertical
                )
            );

            Console.WriteLine("Horizontal? " + horizontal);
            Console.WriteLine("Vertical? " + vertical);

            Student peter = new Student
            {
                FirstName = "Peter",
                LastName = "Ivanov",
                OtherInfo = "From Sofia, born at 17.03.1992"
            };

            Student stella = new Student
            {
                FirstName = "Stella",
                LastName = "Markova",
                OtherInfo = "From Vidin, gamer, high results, born at 03.11.1993"
            };

            Console.WriteLine("{0} older than {1} -> {2}",
                peter.FirstName, stella.FirstName, peter.IsOlderThan(stella)
            );
        }
    }
}

