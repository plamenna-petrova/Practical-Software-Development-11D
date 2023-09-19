using MagicalNumbersConsoleMVC.Models;
using MagicalNumbersConsoleMVC.Views;
using System;
using System.Collections.Generic;
using System.Text;

namespace MagicalNumbersConsoleMVC.Controllers
{
    public class MagicalNumbersController
    {
        private MagicalNumberInfo magicalNumberInfo;

        private Display display;

        public MagicalNumbersController()
        {
            display = new Display();
            magicalNumberInfo = new MagicalNumberInfo(display.WholeNumber);
            display.SixDigitsNumbersWithDigitsProductEqualingMagicalNumber = magicalNumberInfo
                .GetSixDigitsNumberWithDigitsProductEqualingMagicalNumber();
            display.ShowSixDigitsNumbersWithDigitsProductEqualingMagicalNumber();
        }
    }
}
