using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace harjutus
{
    class Program
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("karjuta cml sein");
            decimal cm1 = Math.Abs(decimal.Parse(Console.ReadLine()));
            Console.WriteLine("Kirjuta cm2 sein");
            decimal cm2 = Math.Abs(decimal.Parse(Console.ReadLine()));

            Console.WriteLine("põranda pindala");
            Console.WriteLine(cm1 + cm2 + "cm2");
            Console.WriteLine("Kas tahad remondi teha?")
            string otvet = Console.ReadLine();
            if(otvet="jah")
            {
                Console.WriteLine("kui suur ruud meetri");
            }
            else

        }
    }
}
