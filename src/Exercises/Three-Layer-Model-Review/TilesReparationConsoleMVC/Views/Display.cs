using System;
using System.Collections.Generic;
using System.Text;

namespace TilesReparationConsoleMVC.Views
{
    public class Display
    {
        public Display()
        {
            GetValues();
        }

        public int N { get; set; }

        public double W { get; set; }

        public double L { get; set; }

        public int M { get; set; }

        public int O { get; set; }

        public double[] LandingReparationDetails { get; set; }

        public void ShowLandingReparationDetails()
        {
            foreach (var landingReparationDetail in LandingReparationDetails)
            {
                Console.WriteLine(landingReparationDetail);
            }
        }

        private void GetValues()
        {
            N = int.Parse(Console.ReadLine());
            W = double.Parse(Console.ReadLine());
            L = double.Parse(Console.ReadLine());
            M = int.Parse(Console.ReadLine());
            O = int.Parse(Console.ReadLine());
        }
    }
}
