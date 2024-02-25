using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CarsDealerJSON
{
    public class Car
    {
        private string model;

        private Engine engine;

        private int? weight;

        private string color;

        public Car()
        {

        }

        public Car(string model, Engine engine)
        {
            this.model = model;
            this.engine = engine;
        }

        public string Model
        {
            get { return model; }
            set { model = value; }
        }

        public Engine Engine
        {
            get { return engine; }
            set { engine = value; }
        }

        public int? Weight
        {
            get { return weight; }
            set { weight = value; }
        }

        public string Color
        {
            get { return color; }
            set { color = value; }
        }
    }

    public class Engine
    {
        private string model;

        private int power;

        private int? displacement;

        private string efficiency;

        public Engine()
        {

        }

        public Engine(string model, int power)
        {
            this.model = model;
            this.power = power;
        }

        public string Model
        {
            get { return model; }
            set { model = value; }
        }

        public int Power
        {
            get { return power; }
            set { power = value; }
        }

        public int? Displacement
        {
            get { return displacement; }
            set { displacement = value; }
        }

        public string Efficiency
        {
            get { return efficiency; }
            set { efficiency = value; }
        }
    }

    public class CarsDealerStats
    {
        [JsonProperty("carModel")]
        public string CarModel { get; set; }

        [JsonProperty("engineModel")]
        public string CarEngineModel { get; set; }

        [JsonProperty("enginePower")]
        public string CarEnginePower { get; set; }

        [JsonProperty("engineDisplacement")]
        public string CarEngineDisplacement { get; set; }

        [JsonProperty("engineEfficiency")]
        public string CarEngineEfficiency { get; set; }

        [JsonProperty("carWeight")]
        public string CarWeight { get; set; }

        [JsonProperty("carColor")]
        public string CarColor { get; set; }
    }

    public class Program
    {
        static void Main(string[] args)
        {
            string[] carsDealerInformationExampleJSONArrays = new string[]
            {
                @"
                    [
                        ""2"",
                        ""V8-101 220 50"",
                        ""V4-33 140 28 B"",
                        ""3"",
                        ""FordFocus V4-33 1300 Silver"",
                        ""FordMustang V8-101"",
                        ""VolkswagenGolf V4-33 Orange""
                    ]
                ",
                @"
                    [
                        ""4"",
                        ""DSL-10 280 B"",
                        ""V7-55 200 35"",
                        ""DSL-13 305 55 A+"",
                        ""V7-54 190 30 D"",
                        ""4"",
                        ""FordMondeo DSL-13 Purple"",
                        ""VolkswagenPolo V7-54 1200 Yellow"",
                        ""VolkswagenPassat DSL-10 1375 Blue"",
                        ""FordFusion DSL-13""
                    ]
                "
            };

            foreach (var carsDealerInformationExampleJSONArray in carsDealerInformationExampleJSONArrays)
            {
                JArray deserializedCarsDealerInformationExampleJArray = JArray.Parse(carsDealerInformationExampleJSONArray);

                string[] carsDealerCommands = deserializedCarsDealerInformationExampleJArray
                    .Select(c => c.ToString())
                    .ToArray();

                int commandIndex = 0;

                int numberOfEngines = int.Parse(carsDealerCommands[0].Split().ToArray()[0]);

                commandIndex++;

                List<Engine> carEngines = new List<Engine>();
                
                while (numberOfEngines > 0)
                {
                    string[] engineInformation = new string[4];
                    string[] engineInput = carsDealerCommands[commandIndex].Split().ToArray();
                    Array.Copy(engineInput, engineInformation, engineInput.Length);

                    Engine engine = new Engine(engineInformation[0], int.Parse(engineInformation[1]));

                    if (!string.IsNullOrEmpty(engineInformation[2]))
                    {
                        if (int.TryParse(engineInformation[2], out int engineDisplacement))
                        {
                            engine.Displacement = engineDisplacement;
                        }
                        else
                        {
                            engine.Efficiency = engineInformation[2];
                        }
                    }

                    if (engineInformation[3] != null)
                    {
                        engine.Efficiency = engineInformation[3];
                    }

                    carEngines.Add(engine);

                    commandIndex++;

                    numberOfEngines--;
                }

                int numberOfCars = int.Parse(carsDealerCommands[commandIndex].Split().ToArray()[0]);

                commandIndex++;

                List<Car> cars = new List<Car>();

                while (numberOfCars > 0)
                {
                    string[] carInformation = new string[4];
                    string[] carInput = carsDealerCommands[commandIndex].Split().ToArray();
                    Array.Copy(carInput, carInformation, carInput.Length);

                    string carModel = carInformation[0];
                    Engine carEngine = carEngines.Where(ce => ce.Model == carInformation[1]).First();

                    Car car = new Car(carModel, carEngine);

                    if (!string.IsNullOrEmpty(carInformation[2]))
                    {
                        if (int.TryParse(carInformation[2], out int carWeight))
                        {
                            car.Weight = carWeight;
                        }
                        else
                        {
                            car.Color = carInformation[2];
                        }
                    }

                    if (!string.IsNullOrEmpty(carInformation[3]))
                    {
                        car.Color = carInformation[3];
                    }

                    cars.Add(car);

                    commandIndex++;

                    numberOfCars--;
                }

                List<CarsDealerStats> carsDealerStats = new List<CarsDealerStats>();

                foreach (var carToPrint in cars)
                {
                    CarsDealerStats carsDealerStatsEntry = new CarsDealerStats();

                    carsDealerStatsEntry.CarModel = $"{carToPrint.Model}:";
                    carsDealerStatsEntry.CarEngineModel = $"  {carToPrint.Engine.Model}:";
                    carsDealerStatsEntry.CarEnginePower = $"    Power: {carToPrint.Engine.Power}";

                    if (carToPrint.Engine.Displacement == null)
                    {
                        carsDealerStatsEntry.CarEngineDisplacement = $"    Displacement: n/a";
                    }
                    else
                    {
                        carsDealerStatsEntry.CarEngineDisplacement = $"    Displacement: {carToPrint.Engine.Displacement}";
                    }

                    if (carToPrint.Engine.Efficiency == null)
                    {
                        carsDealerStatsEntry.CarEngineEfficiency = $"    Efficiency: n/a";
                    }
                    else
                    {
                        carsDealerStatsEntry.CarEngineEfficiency = $"    Efficiency: {carToPrint.Engine.Efficiency}";
                    }

                    if (carToPrint.Weight == null)
                    {
                        carsDealerStatsEntry.CarWeight = $"  Weight: n/a";
                    }
                    else
                    {
                        carsDealerStatsEntry.CarWeight = $"  Weight: {carToPrint.Weight}";
                    }

                    if (carToPrint.Color == null)
                    {
                        carsDealerStatsEntry.CarColor = $"  Color: n/a";
                    }
                    else
                    {
                        carsDealerStatsEntry.CarColor = $"  Color: {carToPrint.Color}";
                    }

                    carsDealerStats.Add(carsDealerStatsEntry);
                }

                Console.WriteLine(JsonConvert.SerializeObject(carsDealerStats, Formatting.Indented) + Environment.NewLine);
            }
        }
    }
}
