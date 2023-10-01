using System;
using YoloSnake.Core;
using YoloSnake.Models;

namespace YoloSnakeRefactoredCode
{
    public class Program
    {
        static void Main(string[] args)
        {
            Snake snake = new Snake('*', 0, 0, 5);

            ConsoleDrawer consoleDrawer = new ConsoleDrawer();  

            snake.Draw(consoleDrawer);
            snake.Move();
        }
    }
}
