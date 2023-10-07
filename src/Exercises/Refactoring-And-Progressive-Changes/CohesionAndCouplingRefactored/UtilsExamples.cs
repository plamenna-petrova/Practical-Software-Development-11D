using CohesionAndCouplingRefactored;
using System;

namespace CohesionAndCoupling
{
    class UtilsExamples
    {
        static void Main()
        {
            Console.WriteLine(FileExtensionUtils.GetFileExtension("example"));
            Console.WriteLine(FileExtensionUtils.GetFileExtension("example.pdf"));
            Console.WriteLine(FileExtensionUtils.GetFileExtension("example.new.pdf"));

            Console.WriteLine(FileExtensionUtils.GetFileNameWithoutExtension("example"));
            Console.WriteLine(FileExtensionUtils.GetFileNameWithoutExtension("example.pdf"));
            Console.WriteLine(FileExtensionUtils.GetFileNameWithoutExtension("example.new.pdf"));

            Console.WriteLine("Distance in the 2D space = {0:f2}",
                DistanceCalculationUtils.CalculateDistance2D(1, -2, 3, 4));
            Console.WriteLine("Distance in the 3D space = {0:f2}",
                DistanceCalculationUtils.CalculateDistance3D(5, 2, -1, 3, -6, 4));

            VolumeCalculationUtils.Width = 3;
            VolumeCalculationUtils.Height = 4;
            VolumeCalculationUtils.Depth = 5;

            Console.WriteLine("Volume = {0:f2}", VolumeCalculationUtils.CalculateVolume());

            Console.WriteLine("Diagonal XYZ = {0:f2}", DistanceCalculationUtils.CalculateDiagonalXYZ());
            Console.WriteLine("Diagonal XY = {0:f2}", DistanceCalculationUtils.CalculateDiagonalXY());
            Console.WriteLine("Diagonal XZ = {0:f2}", DistanceCalculationUtils.CalculateDiagonalXZ());
            Console.WriteLine("Diagonal YZ = {0:f2}", DistanceCalculationUtils.CalculateDiagonalYZ());
        }
    }
}

