using System;
using System.Collections.Generic;
using System.Text;

namespace JourneyConsoleMVC.Models
{
    public class Journey
    {
        private const string Summer = "summer";

        private const string Winter = "winter";

        private const string Camp = "Camp";

        private const string Hotel = "Hotel";

        private double travellingBudget;

        private string travellingSeason;

        public Journey(double travellingBudget, string travellingSeason)
        {
            TravellingBudget = travellingBudget;
            TravellingSeason = travellingSeason;
        }

        public double TravellingBudget
        {
            get
            {
                return travellingBudget;
            }
            
            set
            {
                travellingBudget = value;
            }
        }

        public string TravellingSeason
        {
            get
            {
                return travellingSeason;
            }

            set
            {
                travellingSeason = value;
            }
        }

        public string GetJourneyDetails()
        {
            string travellingDestination;
            string restingPlace = default;
            double restingPlacePrice = default;

            if (TravellingBudget <= 100)
            {
                travellingDestination = "Bulgaria";

                switch (TravellingSeason)
                {
                    case Summer:
                        restingPlace = Camp;
                        restingPlacePrice = 0.30 * TravellingBudget;
                        break;
                    case Winter:
                        restingPlace = Hotel;
                        restingPlacePrice = 0.70 * TravellingBudget;
                        break;
                }
            }
            else if (TravellingBudget > 100 && TravellingBudget <= 1000)
            {
                travellingDestination = "Balkans";

                switch (TravellingSeason)
                {
                    case Summer:
                        restingPlace = Camp;
                        restingPlacePrice = 0.40 * TravellingBudget;
                        break;
                    case Winter:
                        restingPlace = Hotel;
                        restingPlacePrice = 0.80 * TravellingBudget;
                        break;
                }
            }
            else
            {
                travellingDestination = "Europe";
                restingPlace = Hotel;
                restingPlacePrice = 0.90 * TravellingBudget;
            }

            StringBuilder journeyStringBuilder = new StringBuilder()
                .AppendLine($"Somewhere in {travellingDestination}")
                .AppendLine($"{restingPlace} - {restingPlacePrice:F2}");

            return journeyStringBuilder.ToString();
        }
    }
}
