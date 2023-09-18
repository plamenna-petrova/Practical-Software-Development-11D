using System;

namespace DungeonestDark
{
    // Entrance Exam Preparation Task #4

    public class Hero
    {
        private int hp;

        private int coins;

        /*
            the properties obtain initial values
         */

        public Hero()
        {
            this.HP = 100;
            this.Coins = 0;
        }

        /*
            note that the getters and setters can be also positioned in a inline direction
         */

        public int HP
        {
            get { return this.hp; }
            set { this.hp = value; }
        }

        public int Coins
        {
            get { return this.coins; }
            set { this.coins = value; }
        }
    }

    public class Program
    {
        static void Main(string[] args)
        {
            /*
                use 
                new char[] { '|' }
                as a argument for the split method if you want to split the string by more than one character
             */

            string[] dungeonRoomsCommands = Console.ReadLine().Split('|');

            Hero hero = new Hero();

            int roomsCounter = 0;

            bool isDungeonRoomsCommandsSendingActive = true;

            for (int i = 0; i < dungeonRoomsCommands.Length; i++)
            {
                /*
                    each part of the command is splitted by '|',
                    but needs to splitted again on each iteration, this time by a whitespace
                    the whitespace can also be defined explicitly
                    for instance 
                    string[] dungeonRoomCommandDetails = dungeonRoomsCommands[i].Split(' ')
                 */

                string[] dungeonRoomCommandDetails = dungeonRoomsCommands[i].Split();

                /*
                    switch over the first elemenent of the command array
                    the default case will hold the logic for a monster encounter
                 */

                switch (dungeonRoomCommandDetails[0])
                {
                    case "potion":
                        int pointsToHeal = int.Parse(dungeonRoomCommandDetails[1]);

                        if (hero.HP + pointsToHeal > 100)
                        {
                            Console.WriteLine($"You healed for {100 - hero.HP} hp.");
                            hero.HP += 100 - hero.HP;
                        }
                        else
                        {
                            Console.WriteLine($"You healed for {pointsToHeal} hp.");
                            hero.HP += pointsToHeal;
                        }

                        Console.WriteLine($"Current health: {hero.HP} hp.");
                        roomsCounter++;
                        break;
                    case "chest":
                        int foundCoins = int.Parse(dungeonRoomCommandDetails[1]);
                        Console.WriteLine($"You found {foundCoins} coins.");
                        hero.Coins += foundCoins;
                        roomsCounter++;
                        break;
                    default:
                        int monsterAttack = int.Parse(dungeonRoomCommandDetails[1]);
                        hero.HP -= monsterAttack;
                        roomsCounter++;

                        if (hero.HP > 0)
                        {
                            Console.WriteLine($"You slayed {dungeonRoomCommandDetails[0]}.");
                        }
                        else
                        {
                            Console.WriteLine($"You died! Killed by {dungeonRoomCommandDetails[0]}.");
                            Console.WriteLine($"Best room: {roomsCounter}");
                            isDungeonRoomsCommandsSendingActive = false;
                        }
                        break;
                }

                /*
                    breaking out of the loop - game over
                 */

                if (!isDungeonRoomsCommandsSendingActive)
                {
                    break;
                }
            }

            if (roomsCounter == dungeonRoomsCommands.Length)
            {
                Console.WriteLine($"You've made it!");
                Console.WriteLine($"Coins: {hero.Coins}");
                Console.WriteLine($"Health: {hero.HP}");
            }
        }
    }
}
