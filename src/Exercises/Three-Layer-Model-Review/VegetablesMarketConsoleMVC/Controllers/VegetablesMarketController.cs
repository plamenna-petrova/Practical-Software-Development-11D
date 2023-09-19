using System;
using System.Collections.Generic;
using System.Text;
using VegetablesMarketConsoleMVC.Models;
using VegetablesMarketConsoleMVC.Views;

namespace VegetablesMarketConsoleMVC.Controllers
{
    public class VegetablesMarketController
    {
        private VegetablesMarket vegetablesMarket;

        private Display display;

        public VegetablesMarketController()
        {
            display = new Display();
            vegetablesMarket = new VegetablesMarket(
                display.VegetablesPriceForKG, 
                display.FruitPriceForKG, 
                display.VegetablesTotalKG, 
                display.FruitTotalKG
            );
            display.VegetablesMarketRevenueInEuro = vegetablesMarket.CalculateRevenue();
            display.ShowVegetablesMarketRevenue();
        }
    }
}
