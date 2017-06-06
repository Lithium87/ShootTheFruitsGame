namespace ShootTheFruits.App.Controllers
{
    using System;
    using System.Web.Mvc;
    using System.ComponentModel.DataAnnotations;
    
    [Authorize]
    public class PlayController : Controller
    {
        static int rowsCount = 3;
        static int colsCount = 9;
        static string[,] fruits = GenerateRandomFruits();
        static int score = 0;
        static bool gameOver = false;

        public ActionResult Index()
        {
            ViewBag.rowsCount = rowsCount;
            ViewBag.colsCount = colsCount;
            ViewBag.fruits = fruits;
            ViewBag.score = score;
            ViewBag.gameOver = gameOver;

            return View();
        }

        public ActionResult Reset()
        {
            fruits = GenerateRandomFruits();
            gameOver = false;
            score = 0;
            return RedirectToAction("Index");
        }

        public ActionResult FireTop(int position)
        {
            return Fire(position, 0, 1);
        }

        public ActionResult FireBottom(int position)
        {
            return Fire(position, rowsCount - 1, -1);
        }

        private ActionResult Fire(int position, int startRow, int step)
        {
            var col = position * (colsCount - 1) / 100;
            var row = startRow;

            while (row >= 0 && row < rowsCount)
            {
                var fruit = fruits[row, col];
                if (fruit == "apple")
                {
                    score += 1;
                    fruits[row, col] = "empty";
                    break;
                }
                else if (fruit == "banana")
                {
                    score += 2;
                    fruits[row, col] = "empty";
                    break;
                }
                else if (fruit == "orange")
                {
                    score += 3;
                    fruits[row, col] = "empty";
                    break;
                }
                else if (fruit == "kiwi")
                {
                    score += 4;
                    fruits[row, col] = "empty";
                    break;
                }
                else if (fruit == "dynamite")
                {
                    gameOver = true;
                    break;
                }

                row = row + step;
            }

            return RedirectToAction("Index");
        }

       
        
        static string[,] GenerateRandomFruits()
        {
            var rand = new Random();
            fruits = new string[rowsCount, colsCount];

            for (int row = 0; row < rowsCount; row++)
            {
                for (int col = 0; col < colsCount; col++)
                {
                    var r = rand.Next(9);
                    if (r < 2)
                    {
                        fruits[row, col] = "apple";
                    }
                    else if (r < 4)
                    {
                        fruits[row, col] = "banana";
                    }
                    else if (r < 6)
                    {
                        fruits[row, col] = "orange";
                    }
                    else if (r < 8)
                    {
                        fruits[row, col] = "kiwi";
                    }
                    else
                    {
                        fruits[row, col] = "dynamite";
                    }
                }
            }

            return fruits;
        }
    }
}