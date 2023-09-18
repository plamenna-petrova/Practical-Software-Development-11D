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
            double calculatedLowestPriceForKM;

            if (NumberOfKM < 20)
            {
                if (TimePeriod == "day")
                {
                    calculatedLowestPriceForKM = 0.70 + NumberOfKM * 0.79;
                }
                else
                {
                    calculatedLowestPriceForKM = 0.70 + NumberOfKM * 0.90;
                }
            }
            else if (NumberOfKM >= 20 && numberOfKM < 100)
            {
                calculatedLowestPriceForKM = 0.09 * NumberOfKM;
            }
            else
            {
                calculatedLowestPriceForKM = 0.06 * NumberOfKM;
            }

            return calculatedLowestPriceForKM;
        }
    }
}
