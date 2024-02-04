using DivisionWithoutRemainderConsoleMVC.Models;
using DivisionWithoutRemainderConsoleMVC.Views;

namespace DivisionWithoutRemainderConsoleMVC.Controllers
{
    public class DivisionWithoutRemainderController
    {
        private NumbersInfo numbersInfo;

        private Display display;

        public DivisionWithoutRemainderController()
        {
            display = new Display();
            numbersInfo = new NumbersInfo(display.NumberEntries);
            display.NumberDividedWithoutRamainderPartitionPercentages = numbersInfo.GetNumbersDividedWithoutRemainderPercentageEntries();
            display.ShowNumbersDividedWithoutRemainderPartitionPercentages();
        }
    }
}
