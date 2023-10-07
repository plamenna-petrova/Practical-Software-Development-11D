namespace RefactoringPatterns
{
    using RefactoringChangesBetter;
    using System;

    class Program
    {
        static void Main(string[] args)
        {
            // 2
            FindPointInCircle();

            // 3
            IsPrime(11);

            // 4
            string type = Console.ReadLine();

            if (type == "Online")
            {
                _ = new Student(StudentType.Online);
            }
            else
            {
                _ = new Student(StudentType.Onsite);
            }
        }

        private static bool IsPrime(int num)
        {
            for (int i = 1; i <= Math.Sqrt(num); i++)
            {
                if (num % i == 0)
                {
                    return true;
                }
            }

            return false;
        }

        private static void FindPointInCircle()
        {
            float rectX = 0, rectY = 0, rectWidth = 0, rectHeight = 0;
            float circleX = 0, circleY = 0, radius = 0;
            float pointX = 0, pointY = 0;

            float xCoordinatesSubstraction = circleX - pointX;
            float yCoordinatesSubtraction = circleY - pointY;

            if (pointX >= rectX && pointX <= rectX + rectWidth &&
                pointY <= rectY && pointY >= rectY + rectHeight &&
                Math.Abs((Math.Pow(xCoordinatesSubstraction, 2)) + Math.Pow(yCoordinatesSubtraction, 2)) <= radius)
            {
                Console.WriteLine("Point is inside circle and rectangle.");
            }
        }
    }
}
