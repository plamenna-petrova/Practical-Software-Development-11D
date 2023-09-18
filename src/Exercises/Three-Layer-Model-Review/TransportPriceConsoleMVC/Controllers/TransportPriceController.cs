using System;
using System.Collections.Generic;
using System.Text;
using TransportPriceConsoleMVC.Models;
using TransportPriceConsoleMVC.Views;

namespace TransportPriceConsoleMVC.Controllers
{
    public class TransportPriceController
    {
        private TransportInfo transportInfo;

        private Display display;

        public TransportPriceController()
        {
            display = new Display();
            transportInfo = new TransportInfo(display.NumberOfKM, display.TimePeriod);
            display.LowestPriceForKM = transportInfo.CalculateLowestPriceForKM();
            display.ShowLowestPriceForKM();
        }
    }
}
