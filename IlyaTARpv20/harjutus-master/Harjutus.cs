using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace harjutus
{
    class Harjutus
    {
        public static void Main(string[] args)
        {
            /*int mult = 1;
            int sum = 0;
            for (int i = 0; i < 5; i++)
            {
                Console.Write("Please enter a number: ");
                int smt = Convert.ToInt32(Console.ReadLine());
                sum += smt;
                mult = smt * mult;
            }
            double avg = sum / 5;
            Console.WriteLine($"NUM AVG = {avg}\nNums SUM = {sum}\nNums multiplied = {mult}");
            */


            string text;
            do
            {
                Console.WriteLine("buy elephant!");
                Console.Write("Buy: ");

                text = Console.ReadLine();
            } while (text != "elephant");
            Console.WriteLine("Elephant");
        }
    }
}
    
    
      


