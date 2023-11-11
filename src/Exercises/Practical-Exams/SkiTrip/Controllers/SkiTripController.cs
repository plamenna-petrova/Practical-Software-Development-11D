using SkiTripConsoleMVC.Models;
using SkiTripConsoleMVC.Views;

namespace SkiTripConsoleMVC.Controllers
{
    public class SkiTripController
    {
        private SkiTrip skiTrip;

        private Display display;

        public SkiTripController()
        {
            display = new Display();
            skiTrip = new SkiTrip(display.StayDays, display.AccommodationType, display.Review);
            display.HotelStayPrice = skiTrip.GetHotelStayPrice();
            display.ShowHotelStayFormattedPrice();
        }
    }
}
