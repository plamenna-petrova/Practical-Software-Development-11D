using System;

namespace SkiTripConsoleMVC.Models
{
    public class SkiTrip
    {
        private const string ROOM_FOR_ONE_PERSON = "room for one person";

        private const string APARTMENT = "apartment";

        private const string PRESIDENT_APARTMENT = "president apartment";

        private const string POSITIVE = "positive";

        private const string NEGATIVE = "negative";

        private const int ROOM_FOR_ONE_PERSON_OVERNIGHT_STAY_PRICE = 18;

        private const int APARTMENT_OVERNIGHT_STAY_PRICE = 25;

        private const int PRESIDENT_APARTMENT_OVERNIGHT_STAY_PRICE = 35;

        private int stayDays;

        private string accomodationType;

        private string review;

        public SkiTrip(int stayDays, string accomodationType, string review)
        {
            StayDays = stayDays;
            AccomodationType = accomodationType;
            Review = review;
        }

        public int StayDays 
        { 
            get 
            { 
                return stayDays; 
            } 

            set
            {
                if (value <= 0 || value > 365)
                {
                    throw new ArgumentException("Invalid stay days");
                }

                stayDays = value;
            }
        }

        public string AccomodationType
        {
            get
            {
                return accomodationType;
            }

            set 
            {
                if (value != ROOM_FOR_ONE_PERSON && value != APARTMENT && value != PRESIDENT_APARTMENT) 
                {
                    throw new ArgumentException("Invalid accomodation type");
                }

                accomodationType = value; 
            }
        }

        public string Review
        {
            get
            {
                return review;  
            }

            set
            {
                if (value != POSITIVE && value != NEGATIVE)
                {
                    throw new ArgumentNullException("Invalid review");
                }

                review = value;
            }
        }

        public double GetHotelStayPrice()
        {
            int overnightStays = stayDays - 1;

            double hotelStayPrice = overnightStays * ROOM_FOR_ONE_PERSON_OVERNIGHT_STAY_PRICE;

            switch (AccomodationType)
            {
                case APARTMENT:
                    hotelStayPrice = overnightStays * APARTMENT_OVERNIGHT_STAY_PRICE;

                    if (overnightStays < 10)
                    {
                        hotelStayPrice -= hotelStayPrice * 0.30;
                    }
                    else if (overnightStays <= 15)
                    {
                        hotelStayPrice -= hotelStayPrice * 0.35;
                    }
                    else
                    {
                        hotelStayPrice -= hotelStayPrice * 0.50;
                    }
                    break;
                case PRESIDENT_APARTMENT:
                    hotelStayPrice = overnightStays * PRESIDENT_APARTMENT_OVERNIGHT_STAY_PRICE;

                    if (overnightStays < 10)
                    {
                        hotelStayPrice -= hotelStayPrice * 0.10;
                    }
                    else if (overnightStays <= 15)
                    {
                        hotelStayPrice -= hotelStayPrice * 0.15;
                    }
                    else
                    {
                        hotelStayPrice -= hotelStayPrice * 0.20;
                    }
                    break;
            }

            switch (Review)
            {
                case POSITIVE:
                    hotelStayPrice += hotelStayPrice * 0.25;
                    break;
                case NEGATIVE:
                    hotelStayPrice -= hotelStayPrice * 0.10;
                    break;
            }

            return hotelStayPrice;
        }
    }
}
