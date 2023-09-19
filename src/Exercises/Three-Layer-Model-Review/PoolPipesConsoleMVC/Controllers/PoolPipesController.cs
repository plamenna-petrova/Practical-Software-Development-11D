using PoolPipesConsoleMVC.Models;
using PoolPipesConsoleMVC.Views;
using System;
using System.Collections.Generic;
using System.Text;

namespace PoolPipesConsoleMVC.Controllers
{
    public class PoolPipesController
    {
        private Display display;

        private PoolInfo poolInfo;

        public PoolPipesController()
        {
            display = new Display();
            poolInfo = new PoolInfo(display.V, display.P1, display.P2, display.H);
            display.PoolState = poolInfo.GetPoolState();
            display.ShowPoolState();
        }
    }
}
