using System;
using System.Collections.Generic;
using System.Text;

namespace PoolPipesConsoleMVC.Views
{
    public class Display
    {
        public Display()
        {
            GetValues();
        }

        public int V { get; set; }

        public int P1 { get; set; }

        public int P2 { get; set; }

        public double H { get; set; }

        public string PoolState { get; set; }

        public void ShowPoolState()
        {
            Console.WriteLine(PoolState);
        }

        private void GetValues()
        {
            V = int.Parse(Console.ReadLine());
            P1 = int.Parse(Console.ReadLine());
            P2 = int.Parse(Console.ReadLine());
            H = double.Parse(Console.ReadLine());
        }
    }
}
