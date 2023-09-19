using System;
using System.Collections.Generic;
using System.Text;

namespace VegetablesMarketConsoleMVC.Models
{
    public class VegetablesMarket
    {
        private const double euroRate = 1.94;

        private double vegetablesPriceForKG;

        private double fruitPriceForKG;

        private int vegetablesTotalKG;

        private int fruitTotalKG;

        public VegetablesMarket(double vegetablesPriceForKG, double fruitPriceForKG, int vegetablesTotalKG, int fruitTotalKG)
        {
            VegetablesPriceForKG = vegetablesPriceForKG;
            FruitPriceForKG = fruitPriceForKG;
            VegetablesTotalKG = vegetablesTotalKG;
            FruitTotalKG = fruitTotalKG;
        }

        public double VegetablesPriceForKG
        {
            get
            {
                return vegetablesPriceForKG;
            }

            set
            {
                vegetablesPriceForKG = value;
            }
        }

        public double FruitPriceForKG
        {
            get
            {
                return fruitPriceForKG;
            }

            set
            {
                fruitPriceForKG = value;
            }
        }

        public int VegetablesTotalKG
        {
            get
            {
                return vegetablesTotalKG;
            }

            set
            {
                vegetablesTotalKG = value;
            }
        }

        public int FruitTotalKG
        {
            get
            {
                return fruitTotalKG;
            }

            set
            {
                fruitTotalKG = value;
            }
        }

        public double CalculateRevenue()
        {
            double vegetablesRevenue = VegetablesPriceForKG * VegetablesTotalKG;
            double fruitRevenue = FruitPriceForKG * FruitTotalKG;
            double totalRevenueInEuro = (vegetablesRevenue + fruitRevenue) / euroRate;

            return totalRevenueInEuro;
        }
    }
}
