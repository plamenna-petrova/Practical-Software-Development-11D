using System;

namespace SkiTripConsoleMVC.Views
{
    public class Display
    {
        public Display()
        {
            GetValues();
        }

        public int StayDays { get; set; }

        public string AccomodationType { get; set; }

        public string Review { get; set; }

        public double HotelStayPrice { get; set; }

        public void ShowHotelStayFormattedPrice()
        {
            Console.WriteLine($"{Math.Round(HotelStayPrice, 2):F2}");
        }

        private void GetValues()
        {
            StayDays = int.Parse(Console.ReadLine());
            AccomodationType = Console.ReadLine();
            Review = Console.ReadLine();
        }
    }
}
