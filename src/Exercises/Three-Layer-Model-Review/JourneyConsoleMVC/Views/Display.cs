using System;
using System.Collections.Generic;
using System.Text;

namespace JourneyConsoleMVC.Views
{
    public class Display
    {
        public Display()
        {
            GetValues();
        }

        public double TravellingBudget { get; set; }

        public string TravellingSeason { get; set; }

        public string JourneyDetails { get; set; }

        public void ShowJourneyInfo()
        {
            Console.WriteLine(JourneyDetails);
        }

        private void GetValues()
        {
            TravellingBudget = double.Parse(Console.ReadLine());
            TravellingSeason = Console.ReadLine();
        }
    }
}
