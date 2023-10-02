using System;
using System.Collections.Generic;
using System.Text;

namespace CohesionAndCouplingRefactored
{
    public static class VolumeCalculationUtils
    {
        public static double Width { get; set; }

        public static double Height { get; set; }

        public static double Depth { get; set; }

        public static double CalculateVolume()
        {
            double volume = Width * Height * Depth;
            return volume;
        }
    }
}
