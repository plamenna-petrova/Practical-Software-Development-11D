using System;
using System.Collections.Generic;
using System.Linq;

namespace CargoTransportation
{
    public class Truck
    {
        private string name;

        private int loadCapacity;

        private List<Freight> freights;

        public Truck(string name, int loadCapacity)
        {
            this.Name = name;
            this.LoadCapacity = loadCapacity;
            freights = new List<Freight>();
        }

        public string Name
        {
            get
            {
                return this.name;
            }

            set
            {
                if (string.IsNullOrWhiteSpace(value))
                {
                    throw new ArgumentException("Name cannot be empty");
                }

                this.name = value;
            }
        }

        public int LoadCapacity
        {
            get
            {
                return this.loadCapacity;
            }

            set
            {
                if (value < 0)
                {
                    throw new ArgumentException("Weight cannot be negative");
                }

                this.loadCapacity = value;
            }
        }

        public List<Freight> Freights
        {
            get
            {
                return this.freights;
            }

            set
            {
                this.freights = value;
            }
        }

        public void Load(Freight freight)
        {
            if (LoadCapacity >= freight.Weight)
            {
                LoadCapacity -= freight.Weight;
                Freights.Add(freight);
                Console.WriteLine($"{Name} loaded {freight.Name}");
            }
            else
            {
                Console.WriteLine($"{Name} can not load {freight.Name}");
            }
        }
    }

    public class Freight
    {
        private string name;

        private int weight;

        public Freight(string name, int weight)
        {
            this.name = name;
            this.weight = weight;
        }

        public string Name
        {
            get
            {
                return this.name;
            }

            set
            {
                if (string.IsNullOrWhiteSpace(value))
                {
                    throw new ArgumentException("Name cannot be empty");
                }

                this.name = value;
            }
        }

        public int Weight
        {
            get
            {
                return this.weight;
            }

            set
            {
                if (value < 0)
                {
                    throw new ArgumentException("Weight cannot be negative");
                }

                this.weight = value;
            }
        }
    }

    public class Program
    {
        static void Main(string[] args)
        {
            string[] trucksCommands = Console.ReadLine().Split(new char[] { ';' }, StringSplitOptions.RemoveEmptyEntries);

            List<Truck> trucks = new List<Truck>();

            for (int i = 0; i < trucksCommands.Length; i++)
            {
                string[] truckInfo = trucksCommands[i].Split(new char[] { '=' }, StringSplitOptions.RemoveEmptyEntries);
                string truckName = truckInfo[0];
                int truckLoadCapacity = int.Parse(truckInfo[1]);
                Truck truck = new Truck(truckName, truckLoadCapacity);
                trucks.Add(truck);
            }

            string[] freightsCommands = Console.ReadLine().Split(new char[] { ';' }, StringSplitOptions.RemoveEmptyEntries);

            List<Freight> freights = new List<Freight>();

            for (int i = 0; i < freightsCommands.Length; i++)
            {
                string[] freightInfo = freightsCommands[i].Split(new char[] { '=' }, StringSplitOptions.RemoveEmptyEntries);
                string freightName = freightInfo[0];
                int freightWeight = int.Parse(freightInfo[1]);
                Freight freight = new Freight(freightName, freightWeight);
                freights.Add(freight);
            }

            bool isLoadingCommandsSendingActive = true;

            while (isLoadingCommandsSendingActive)
            {
                string[] loadingCommand = Console.ReadLine().Split();

                if (loadingCommand[0] == "END")
                {
                    isLoadingCommandsSendingActive = false;
                    break;
                }

                string truckName = loadingCommand[0];

                Truck correspondingTruck = trucks
                    .Where(t => t.Name == truckName)
                    .FirstOrDefault();

                string freightName = loadingCommand[1];

                Freight correspondingFreight = freights
                    .Where(f => f.Name == freightName)
                    .FirstOrDefault();

                if (correspondingTruck != null && correspondingFreight != null)
                {
                    correspondingTruck.Load(correspondingFreight);
                }
            }

            if (!isLoadingCommandsSendingActive)
            {
                foreach (var truck in trucks)
                {
                    string truckLoadingMessage = $"{truck.Name} - ";

                    if (truck.Freights.Any())
                    {
                        truckLoadingMessage += string.Join(", ", truck.Freights.Select(f => f.Name));
                    }
                    else
                    {
                        truckLoadingMessage += "Nothing loaded";
                    }

                    Console.WriteLine(truckLoadingMessage);
                }
            }
        }
    }
}