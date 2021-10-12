using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Kordamine
{
    class ClassStart
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Tere Tulemast!, mis on sinu nimi ");
            string eesnimi = Console.ReadLine();
            Console.WriteLine("Tere, " + eesnimi);

            if (eesnimi=="Juku")
            {
                Console.WriteLine("Tule minu juurde külla! Lähme kinno!");
                Console.WriteLine("Kui vana sa oled?");

                int vanus = int.Parse(Console.ReadLine());

                if (vanus<0 || vanus>=120)
                {
                    Console.WriteLine("Viga vanus!");
                }
                else if(vanus<=6)
                {
                    Console.WriteLine("Tasuta pilet");
                }
                else if (vanus>6 && vanus<=14)
                {
                    Console.WriteLine("Laste pilet!");
                }
                else if (vanus > 15 && vanus <= 64)
                {
                    Console.WriteLine("Täispilet!");
                }
                else if (vanus > 65 && vanus <= 119)
                {
                    Console.WriteLine("Sooduspilet!");
                }

               


            }
            else
            {
                Console.WriteLine("Täna mind kodus pole!:");
            }

            

            int a = int.Parse(Console.ReadLine());
            int b = int.Parse(Console.ReadLine());
            Console.WriteLine("Arvade {0} ja {1} korrutis võrdub {2}", a, b, a * b);



            Console.WriteLine("Tere teine inimine!, mis on sinu nimi ");
            string eesnimi1 = Console.ReadLine();
            Console.WriteLine("Tere, " + eesnimi1);

            Console.WriteLine("Tere kolmas inimine!, mis on sinu nimi ");
            string eesnimi2 = Console.ReadLine();
            Console.WriteLine("Tere, " + eesnimi2);
            Console.WriteLine("Sinu sõbra nimi on, " + eesnimi1);


            Console.WriteLine("Mis pikkus on teie toas");
            decimal pikkus = Math.Abs(decimal.Parse(Console.ReadLine()));
            Console.WriteLine("Mis laius on teie toas");
            decimal laius = Math.Abs(decimal.Parse(Console.ReadLine()));
            Console.WriteLine("Pikkus {0}cm ja laius {1}cm väljak on {2}cm", pikkus,laius, pikkus * laius);
            Console.WriteLine("Kas tahad remonti teha?");

            string vastus = Console.ReadLine();
            if (vastus=="Jah")
            {
                Console.WriteLine("Kui palju maksab ruut metri hind ?");
                decimal hind = decimal.Parse(Console.ReadLine());
                Console.WriteLine(Math.Round(hind * ((pikkus / 100) * (laius / 100)), 2) + "-summa");

            }
            else
            {
                Console.WriteLine("Head aega");
            }






            Console.ReadLine();
        }
    }
}
