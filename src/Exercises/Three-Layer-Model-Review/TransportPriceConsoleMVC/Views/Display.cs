using System;
using System.Collections.Generic;
using System.Text;

namespace TransportPriceConsoleMVC.Views
{
    public class Display
    {
        public Display()
        {
            GetValues();    
        }

        public int NumberOfKM { get; set; }

        public string TimePeriod { get; set; }

        public double LowestPriceForKM { get; set; }

        public void ShowLowestPriceForKM()
        {
            Console.WriteLine(Math.Round(LowestPriceForKM, 2));
        }

        private void GetValues()
        {
            NumberOfKM = int.Parse(Console.ReadLine());
            TimePeriod = Console.ReadLine();
        }
    }
}
