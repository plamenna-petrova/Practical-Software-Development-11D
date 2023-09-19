using System;
using System.Collections.Generic;
using System.Text;
using TilesReparationConsoleMVC.Models;
using TilesReparationConsoleMVC.Views;

namespace TilesReparationConsoleMVC.Controllers
{
    public class TilesReparationController
    {
        private TilesReparationInfo tilesReparationInfo;

        private Display display;

        public TilesReparationController()
        {
            display = new Display();
            tilesReparationInfo = new TilesReparationInfo(display.N, display.W, display.L, display.M, display.O);
            display.LandingReparationDetails = tilesReparationInfo.GetLandingReparationDetails();
            display.ShowLandingReparationDetails();
        }
    }
}
