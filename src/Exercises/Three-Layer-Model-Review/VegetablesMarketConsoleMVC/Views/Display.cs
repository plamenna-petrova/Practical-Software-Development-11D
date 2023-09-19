using System;
using System.Collections.Generic;
using System.Text;

namespace VegetablesMarketConsoleMVC.Views
{
    public class Display
    {
        public Display()
        {
            GetValues();
        }

        public double VegetablesPriceForKG { get; set; }

        public double FruitPriceForKG { get; set; }

        public int VegetablesTotalKG { get; set; }

        public int FruitTotalKG { get; set; }

        public double VegetablesMarketRevenueInEuro { get; set; }

        public void ShowVegetablesMarketRevenue()
        {
            Console.WriteLine(VegetablesMarketRevenueInEuro);
        }

        private void GetValues()
        {
            VegetablesPriceForKG = double.Parse(Console.ReadLine());
            FruitPriceForKG = double.Parse(Console.ReadLine());
            VegetablesTotalKG = int.Parse(Console.ReadLine());
            FruitTotalKG = int.Parse(Console.ReadLine());
        }
    }
}
