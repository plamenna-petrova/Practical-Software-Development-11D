using System;
using System.Collections.Generic;
using System.Text;

namespace TransportPriceConsoleMVC.Models
{
    public class TransportInfo
    {
        private int numberOfKM;

        private string timePeriod;

        public TransportInfo(int numberOfKM, string timePeriod)
        {
            this.NumberOfKM = numberOfKM;
            this.TimePeriod = timePeriod;
        }

        public int NumberOfKM
        {
            get
            {
                return this.numberOfKM;
            }

            set
            {
                this.numberOfKM = value;
            }
        }

        public string TimePeriod
        {
            get
            {
                return this.timePeriod;
            }

            set
            {
                this.timePeriod = value;
            }
        }

        public double CalculateLowestPriceForKM()
        {
            /*
                the default value for the type double is 0
                the keyword 'default' is used instead of 0
             */

            double calculatedLowestPriceForKM = default;

            if (NumberOfKM < 20)
            {
                switch (TimePeriod)
                {
                    case "day":
                        calculatedLowestPriceForKM = 0.70 + NumberOfKM * 0.79;
                        break;
                    case "night":
                        calculatedLowestPriceForKM = 0.70 + NumberOfKM * 0.90;
                        break;
                }
            }
            else if (NumberOfKM >= 20 && numberOfKM < 100)
            {
                if (TimePeriod == "day" || TimePeriod == "night")
                {
                    calculatedLowestPriceForKM = 0.09 * NumberOfKM;
                }
            }
            else
            {
                if (TimePeriod == "day" || TimePeriod == "night")
                {
                    calculatedLowestPriceForKM = 0.06 * NumberOfKM;
                }
            }

            return calculatedLowestPriceForKM;
        }
    }
}
