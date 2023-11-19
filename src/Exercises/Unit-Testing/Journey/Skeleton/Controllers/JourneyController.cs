using Skeleton.Models;
using Skeleton.Views;
using System;
using System.Collections.Generic;
using System.Text;

namespace Skeleton.Controllers
{
    public class JourneyController
    {
        private JourneyInfo journey;

        private Display display;

        public JourneyController()
        {
            display = new Display();
            display.GetValues();
            journey = new JourneyInfo(display.TravellingBudget, display.TravellingSeason);
            display.JourneyDetails = journey.GetJourneyDetails();
            display.ShowJourneyInfo();
        }
    }
}
