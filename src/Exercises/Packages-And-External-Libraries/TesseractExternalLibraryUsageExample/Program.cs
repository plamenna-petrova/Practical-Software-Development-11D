using System;
using System.IO;
using System.Reflection;
using Tesseract;

namespace TesseractExternalLibraryUsageExample
{
    public class Program
    {
        static void Main(string[] args)
        {
            /*
                explicit assignment for TesseractEngine datapath
         
                var tessdataPath = Path.GetDirectoryName(Assembly.GetExecutingAssembly().CodeBase);
                tessdataPath = Path.Combine(tessdataPath, "tessdata");
                tessdataPath = tessdataPath.Replace("file:\\", "");
            */

            string imageForProcessingFileName = @"C:\Users\user\source\repos\Practical-Software-Development-11D\src\"
                + @"Exercises\Packages-And-External-Libraries\TesseractExternalLibraryUsageExample\test.png";

            using (var tesseractEngine = new TesseractEngine(@"tessdata", "eng"))
            {
                using (var loadedPixImage = Pix.LoadFromFile(imageForProcessingFileName))
                {
                    using (var page = tesseractEngine.Process(loadedPixImage))
                    {
                        string processedTextFromImage = page.GetText();
                        Console.WriteLine(processedTextFromImage);
                    }
                }
            }
        }
    }
}
