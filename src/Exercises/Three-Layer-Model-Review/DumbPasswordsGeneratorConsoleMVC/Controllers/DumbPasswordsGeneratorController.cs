using DumbPasswordsGeneratorConsoleMVC.Views;
using DumbPasswordsGeneratorConsoleMVC.Моdels;
using System;
using System.Collections.Generic;
using System.Text;

namespace DumbPasswordsGeneratorConsoleMVC.Controllers
{
    public class DumbPasswordsGeneratorController
    {
        private PasswordsInfo passwordsInfo;

        private Display display;

        public DumbPasswordsGeneratorController()
        {
            display = new Display();
            passwordsInfo = new PasswordsInfo(display.N, display.L);
            display.GeneratedDumbPasswords = passwordsInfo.GeneratedDumbPasswords();
            display.ShowGeneratedDumbPasswords();
        }
    }
}
