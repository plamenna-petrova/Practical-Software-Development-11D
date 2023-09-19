using System;
using System.Collections.Generic;
using System.Text;

namespace DumbPasswordsGeneratorConsoleMVC.Views
{
    public class Display
    {
        public Display()
        {
            GetValues();
        }

        public int N { get; set; }

        public int L { get; set; }

        public List<string> GeneratedDumbPasswords { get; set; }

        public void ShowGeneratedDumbPasswords()
        {
            foreach (var generatedDumbPassword in GeneratedDumbPasswords)
            {
                Console.Write($"{generatedDumbPassword} ");
            }
        }

        private void GetValues()
        {
            N = int.Parse(Console.ReadLine());
            L = int.Parse(Console.ReadLine());
            GeneratedDumbPasswords = new List<string>();
        }
    }
}
