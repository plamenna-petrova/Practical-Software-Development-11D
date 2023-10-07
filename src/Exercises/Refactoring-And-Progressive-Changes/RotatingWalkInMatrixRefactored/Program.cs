using System;

namespace Task3
{
    class WalkInMatrica
    {
        static void ChangeDirection(ref int xDirection, ref int yDirection)
        {
            int[] xDirectionalArray = { 1, 1, 1, 0, -1, -1, -1, 0 };
            int[] yDirectionalArray = { 1, 0, -1, -1, -1, 0, 1, 1 };

            int foundCoordinatesIndex = 0;

            for (int i = 0; i < 8; i++)
            {
                if (xDirectionalArray[i] == xDirection && yDirectionalArray[i] == yDirection) 
                { 
                    foundCoordinatesIndex = i; 
                    break; 
                }
            }
                
            if (foundCoordinatesIndex == 7) 
            { 
                xDirection = xDirectionalArray[0]; 
                yDirection = yDirectionalArray[0]; 
                return; 
            }

            xDirection = xDirectionalArray[foundCoordinatesIndex + 1];
            yDirection = yDirectionalArray[foundCoordinatesIndex + 1];
        }

        static bool PerformOutOfBoundariesCheck(int[,] arr, int x, int y)
        {
            int[] xDirectionalArray = { 1, 1, 1, 0, -1, -1, -1, 0 };
            int[] yDirectionalArray = { 1, 0, -1, -1, -1, 0, 1, 1 };

            for (int i = 0; i < 8; i++)
            {
                if (x + xDirectionalArray[i] >= arr.GetLength(0) || x + xDirectionalArray[i] < 0) 
                { 
                    xDirectionalArray[i] = 0; 
                }

                if (y + yDirectionalArray[i] >= arr.GetLength(0) || y + yDirectionalArray[i] < 0) 
                { 
                    yDirectionalArray[i] = 0; 
                }
            }

            for (int i = 0; i < 8; i++)
            {
                if (arr[x + xDirectionalArray[i], y + yDirectionalArray[i]] == 0) 
                { 
                    return true; 
                }
            }
                
            return false;
        }

        static int[] FindCellCoordinates(int[,] arr)
        {
            int x = 0;
            int y = 0;

            int[] coordinatesArray = new int[] { x, y };

            for (int i = 0; i < arr.GetLength(0); i++)
            {
                for (int j = 0; j < arr.GetLength(0); j++)
                {
                    if (arr[i, j] == 0) 
                    {
                        coordinatesArray[0] = i;
                        coordinatesArray[1] = j;
                        return coordinatesArray;
                    }
                }
            }

            return coordinatesArray;
        }

        static void PrintMatrix(int[,] matrixToPrint)
        {
            for (int p = 0; p < matrixToPrint.GetLength(0); p++)
            {
                for (int q = 0; q < matrixToPrint.GetLength(1); q++) 
                { 
                    Console.Write("{0,3}", matrixToPrint[p, q]); 
                }

                Console.WriteLine();
            }
        }

        static void RotateMatrix(int[,] matrixToRotate, int[] cellCourdinates, int n)
        {
            int i = cellCourdinates[0];
            int j = cellCourdinates[1];

            int k = 1;

            int xDirection = 1;
            int yDirection = 1;

            while (true)
            {
                matrixToRotate[i, j] = k;

                if (!PerformOutOfBoundariesCheck(matrixToRotate, i, j))
                {
                    break;
                }

                if (i + xDirection >= n || i + xDirection < 0 || j + yDirection >= n ||
                    j + yDirection < 0 || matrixToRotate[i + xDirection, j + yDirection] != 0)
                {
                    while (i + xDirection >= n || i + xDirection < 0 || j + yDirection >= n ||
                            j + yDirection < 0 || matrixToRotate[i + xDirection, j + yDirection] != 0)
                    {
                        ChangeDirection(ref xDirection, ref yDirection);
                    }
                }

                i += xDirection;
                j += yDirection;
                k++;
            }
        }

        static void Main(string[] args)
        {
            //Console.WriteLine( "Enter a positive number " );
            //string input = Console.ReadLine(  );
            //int n = 0;
            //while ( !int.TryParse( input, out n ) || n < 0 || n > 100 )
            //{
            //    Console.WriteLine( "You haven't entered a correct positive number" );
            //    input = Console.ReadLine(  );
            //}

            int n = 3;
            int[,] matrixToRotate = new int[n, n];

            int matrixStartXCoordinate = 0;
            int matrixStartYCoordinate = 0;

            RotateMatrix(matrixToRotate, new int[] { matrixStartXCoordinate, matrixStartYCoordinate }, n);

            PrintMatrix(matrixToRotate);

            int[] foundCellCoordinates = FindCellCoordinates(matrixToRotate);

            if (foundCellCoordinates[0] != 0 && foundCellCoordinates[1] != 0)
            {
                RotateMatrix(matrixToRotate, foundCellCoordinates, n);
            }

            PrintMatrix(matrixToRotate);
        }
    }
}
