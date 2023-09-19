using System;
using System.Collections.Generic;
using System.Text;

namespace TilesReparationConsoleMVC.Models
{
    public class TilesReparationInfo
    {
        private int landingSideLength;

        private double singleTileWidth;

        private double singleTileLength;

        private int benchWidth;

        private int benchLength;

        public TilesReparationInfo(int landingSideLength, double singleTileWidth, double singleTileLength, int benchWidth, int benchLength)
        {
            LandingSideLength = landingSideLength;
            SingleTileWidth = singleTileWidth;
            SingleTileLength = singleTileLength;
            BenchWidth = benchWidth;
            BenchLength = benchLength;
        }

        public int LandingSideLength
        {
            get
            {
                return landingSideLength;
            }

            set
            {
                if (value < 1 || value > 100)
                {
                    throw new ArgumentException("Invalid value");
                }

                landingSideLength = value;
            }
        }

        public double SingleTileWidth
        {
            get
            {
                return singleTileWidth;
            }

            set
            {
                if (value < 0.1 || value > 10.00)
                {
                    throw new ArgumentException("Invalid value");
                }

                singleTileWidth = value;
            }
        }

        public double SingleTileLength
        {
            get
            {
                return singleTileLength;
            }

            set
            {
                if (value < 0.1 || value > 10.00)
                {
                    throw new ArgumentException("Invalid value");
                }

                singleTileLength = value;
            }
        }

        public int BenchWidth
        {
            get
            {
                return benchWidth;
            }

            set
            {
                if (value < 1 || value > 10)
                {
                    throw new ArgumentException("Invalid value");
                }

                benchWidth = value;
            }
        }

        public int BenchLength
        {
            get
            {
                return benchLength;
            }

            set
            {
                if (value < 1 || value > 10)
                {
                    throw new ArgumentException("Invalid value");
                }

                benchLength = value;
            }
        }

        public double[] GetLandingReparationDetails()
        {
            double totalLandingArea = LandingSideLength * LandingSideLength;
            double singleBenchArea = BenchWidth * BenchLength;
            double areaToCover = totalLandingArea - singleBenchArea;
            double singleTileArea = SingleTileWidth * SingleTileLength;
            double neededTiles = areaToCover / singleTileArea;
            double timeToRepairLanding = neededTiles * 0.2;

            double[] landingReparationDetails = new double[] 
            {
                neededTiles,
                timeToRepairLanding
            };

            return landingReparationDetails;
        }
    }
}
