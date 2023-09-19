using JourneyConsoleMVC.Models;
using JourneyConsoleMVC.Views;
using System;
using System.Collections.Generic;
using System.Text;

namespace JourneyConsoleMVC.Controllers
{
    public class JourneyController
    {
        private Journey journey;

        private Display display;

        public JourneyController()
        {
            display = new Display();
            journey = new Journey(display.TravellingBudget, display.TravellingSeason);
            display.JourneyDetails = journey.GetJourneyDetails();
            display.ShowJourneyInfo();
        }
    }
}
