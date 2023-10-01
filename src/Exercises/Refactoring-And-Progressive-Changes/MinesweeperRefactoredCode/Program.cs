using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace mini4ki
{
    public class Minesweeper
    {
        public class Rank
        {
            private string playerName;

            private int playerPoints;

            public string PlayerName
            {
                get
                {
                    return playerName;
                }

                set
                {
                    playerName = value;
                }
            }

            public int PlayerPoints
            {
                get
                {
                    return playerPoints;
                }

                set
                {
                    playerPoints = value;
                }
            }

            public Rank()
            {

            }

            public Rank(string playerName, int playerPoints)
            {
                this.playerName = playerName;
                this.playerPoints = playerPoints;
            }
        }

        private static void Main(string[] args)
        {
            const int maxPoints = 35;

            string command = string.Empty;

            char[,] playground = CreatePlayground();
            char[,] bombsToPlace = PlaceBombs();

            int pointsCounter = 0;
            bool hasGameEnded = false;

            List<Rank> players = new List<Rank>(6);

            int row = 0;
            int col = 0;
            bool gameBeginFlag = true;
            bool maximumPointsReached = false;

            do
            {
                if (gameBeginFlag)
                {
                    Console.WriteLine(
                        "Let's play “Minesweeper”. Try your best luck to find fields without mines."
                        + " The command 'top' shows the leaderboard, with the command 'restart' " +
                        "you begin a new came and with the command 'exit' you exit from the game!");
                    GetPlaygroundStatus(playground);
                    gameBeginFlag = false;
                }

                Console.Write("Enter row and col : ");

                command = Console.ReadLine().Trim();

                if (command.Length >= 3)
                {
                    if (int.TryParse(command[0].ToString(), out row) && int.TryParse(command[2].ToString(), out col)
                        && row <= playground.GetLength(0) && col <= playground.GetLength(1))
                    {
                        command = "turn";
                    }
                }

                switch (command)
                {
                    case "top":
                        GetLeaderboard(players);
                        break;
                    case "restart":
                        playground = CreatePlayground();
                        bombsToPlace = PlaceBombs();
                        GetPlaygroundStatus(playground);
                        hasGameEnded = false;
                        gameBeginFlag = false;
                        break;
                    case "exit":
                        Console.WriteLine("Exited game!");
                        break;
                    case "turn":
                        if (bombsToPlace[row, col] != '*')
                        {
                            if (bombsToPlace[row, col] == '-')
                            {
                                Play(playground, bombsToPlace, row, col);
                                pointsCounter++;
                            }

                            if (maxPoints == pointsCounter)
                            {
                                maximumPointsReached = true;
                            }
                            else
                            {
                                GetPlaygroundStatus(playground);
                            }
                        }
                        else
                        {
                            hasGameEnded = true;
                        }

                        break;
                    default:
                        Console.WriteLine("\nError! Invalid command\n");
                        break;
                }

                if (hasGameEnded)
                {
                    GetPlaygroundStatus(bombsToPlace);
                    Console.Write("\nGame over! You have gathered {0} points. " + "Enter your nickname: ", pointsCounter);
                    string playerName = Console.ReadLine();
                    Rank playerRank = new Rank(playerName, pointsCounter);
                    if (players.Count < 5)
                    {
                        players.Add(playerRank);
                    }
                    else
                    {
                        for (int i = 0; i < players.Count; i++)
                        {
                            if (players[i].PlayerPoints < playerRank.PlayerPoints)
                            {
                                players.Insert(i, playerRank);
                                players.RemoveAt(players.Count - 1);
                                break;
                            }
                        }
                    }

                    players.Sort((Rank firstPlayerRank, Rank secondPlayerRank) => 
                        secondPlayerRank.PlayerName.CompareTo(firstPlayerRank.PlayerName));
                    players.Sort((Rank firstPlayerRank, Rank secondPlayerRank) => 
                        secondPlayerRank.PlayerPoints.CompareTo(firstPlayerRank.PlayerPoints));

                    GetLeaderboard(players);

                    playground = CreatePlayground();
                    bombsToPlace = PlaceBombs();
                    pointsCounter = 0;
                    hasGameEnded = false;
                    gameBeginFlag = true;
                }

                if (maximumPointsReached)
                {
                    Console.WriteLine("\nCongratulations! You opened 35 cells without failing.");
                    GetPlaygroundStatus(bombsToPlace);
                    Console.WriteLine("Enter your nickname: ");
                    string nickname = Console.ReadLine();
                    Rank player = new Rank(nickname, pointsCounter);
                    players.Add(player);
                    GetLeaderboard(players);
                    playground = CreatePlayground();
                    bombsToPlace = PlaceBombs();
                    pointsCounter = 0;
                    maximumPointsReached = false;
                    gameBeginFlag = true;
                }
            }
            while (command != "exit");

            Console.Read();
        }

        private static void GetLeaderboard(List<Rank> playerRankings)
        {
            Console.WriteLine("\nPoints:");

            if (playerRankings.Count > 0)
            {
                for (int i = 0; i < playerRankings.Count; i++)
                {
                    Console.WriteLine("{0}. {1} --> {2} points", i + 1, playerRankings[i].PlayerName, playerRankings[i].PlayerPoints);
                }

                Console.WriteLine();
            }
            else
            {
                Console.WriteLine("No players for leaderboard!\n");
            }
        }

        private static void Play(char[,] playground, char[,] bombsPlayground, int row, int col)
        {
            char bombsCount = CountBombs(bombsPlayground, row, col);
            bombsPlayground[row, col] = bombsCount;
            playground[row, col] = bombsCount;
        }

        private static void GetPlaygroundStatus(char[,] playground)
        {
            int rows = playground.GetLength(0);
            int cols = playground.GetLength(1);

            Console.WriteLine("\n    0 1 2 3 4 5 6 7 8 9");
            Console.WriteLine("   ---------------------");

            for (int i = 0; i < rows; i++)
            {
                Console.Write("{0} | ", i);

                for (int j = 0; j < cols; j++)
                {
                    Console.Write(string.Format("{0} ", playground[i, j]));
                }

                Console.Write("|");
                Console.WriteLine();
            }

            Console.WriteLine("   ---------------------\n");
        }

        private static char[,] CreatePlayground()
        {
            int boardRows = 5;
            int boardColumns = 10;

            char[,] board = new char[boardRows, boardColumns];

            for (int i = 0; i < boardRows; i++)
            {
                for (int j = 0; j < boardColumns; j++)
                {
                    board[i, j] = '?';
                }
            }

            return board;
        }

        private static char[,] PlaceBombs()
        {
            int bombsPlaygroundRows = 5;
            int bombsPlaygroundCols = 10;

            char[,] bombsPlayground = new char[bombsPlaygroundRows, bombsPlaygroundCols];

            for (int i = 0; i < bombsPlaygroundRows; i++)
            {
                for (int j = 0; j < bombsPlaygroundCols; j++)
                {
                    bombsPlayground[i, j] = '-';
                }
            }

            List<int> bombs = new List<int>();

            while (bombs.Count < 15)
            {
                Random random = new Random();
                int randomBombWithDamage = random.Next(50);

                if (!bombs.Contains(randomBombWithDamage))
                {
                    bombs.Add(randomBombWithDamage);
                }
            }

            foreach (int bomb in bombs)
            {
                int bombCol = bomb / bombsPlaygroundCols;
                int bombRow = bomb % bombsPlaygroundCols;

                if (bombRow == 0 && bomb != 0)
                {
                    bombCol--;
                    bombRow = bombsPlaygroundCols;
                }
                else
                {
                    bombRow++;
                }

                bombsPlayground[bombCol, bombRow - 1] = '*';
            }

            return bombsPlayground;
        }

        private static void GetBombsCountForCell(char[,] playground)
        {
            int playgroundRows = playground.GetLength(0);
            int playgroundCols = playground.GetLength(1);

            for (int i = 0; i < playgroundRows; i++)
            {
                for (int j = 0; j < playgroundCols; j++)
                {
                    if (playground[i, j] != '*')
                    {
                        char starsCount = CountBombs(playground, i, j);
                        playground[i, j] = starsCount;
                    }
                }
            }
        }

        private static char CountBombs(char[,] playground, int rowIndex, int colIndex)
        {
            int counter = 0;
            int playgroundRows = playground.GetLength(0);
            int playgroundCols = playground.GetLength(1);

            if (rowIndex - 1 >= 0)
            {
                if (playground[rowIndex - 1, colIndex] == '*')
                {
                    counter++;
                }
            }

            if (rowIndex + 1 < playgroundRows)
            {
                if (playground[rowIndex + 1, colIndex] == '*')
                {
                    counter++;
                }
            }

            if (rowIndex - 1 >= 0)
            {
                if (playground[rowIndex, colIndex - 1] == '*')
                {
                    counter++;
                }
            }

            if (colIndex + 1 < playgroundCols)
            {
                if (playground[rowIndex, colIndex + 1] == '*')
                {
                    counter++;
                }
            }

            if ((rowIndex - 1 >= 0) && (colIndex - 1 >= 0))
            {
                if (playground[rowIndex - 1, colIndex - 1] == '*')
                {
                    counter++;
                }
            }

            if ((rowIndex - 1 >= 0) && (colIndex + 1 < playgroundCols))
            {
                if (playground[rowIndex - 1, colIndex + 1] == '*')
                {
                    counter++;
                }
            }

            if ((rowIndex + 1 < playgroundRows) && (colIndex - 1 >= 0))
            {
                if (playground[rowIndex + 1, colIndex - 1] == '*')
                {
                    counter++;
                }
            }

            if ((rowIndex + 1 < playgroundRows) && (colIndex + 1 < playgroundCols))
            {
                if (playground[rowIndex + 1, colIndex + 1] == '*')
                {
                    counter++;
                }
            }

            return char.Parse(counter.ToString());
        }
    }
}