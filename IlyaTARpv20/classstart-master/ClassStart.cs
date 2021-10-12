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
            Console.WriteLine("Tere tulemast!");
            string eesnimi = Console.ReadLine();
            Console.WriteLine("Tere, " + eesnimi);

            if (eesnimi=="Juku")
            {
                Console.WriteLine("Tule minu juurde külla!  Lähme kinno! Kui vana sa oled " + eesnimi);
                int vanus = int.Parse(Console.ReadLine());
                if (vanus<0 || vanus>=120)
                {
                    Console.WriteLine("Viga andmetega!");
                }
                else if (vanus < 6)
                {
                    Console.WriteLine("Tasuta pilet!");
                }
                else if (vanus>6 && vanus<=14)
                {
                    Console.WriteLine("Lastepilet!");
                }
                else if (vanus>=15 && vanus <= 64)
                {
                    Console.WriteLine("Täispilet!");
                }
                else if (vanus > 65 && vanus <= 120)
                {
                    Console.WriteLine("Sooduspilet!");
                }
            }
            else
            {
                Console.WriteLine("Täna mind kodus pole!");
            }

            int arv1 = int.Parse(Console.ReadLine());
            int arv2 = int.Parse(Console.ReadLine());
            Console.WriteLine("Arvade {0} ja {1} korrutis võrdub {2}", arv1, arv2, arv1 * arv2);

            Console.ReadLine();

            Console.WriteLine("Tere tulemast! Teie nimi?");
            string eesnimi1 = Console.ReadLine();
            Console.WriteLine("Tere, " + eesnimi1);
            Console.WriteLine("Tere tulemast! Teie nimi?");
            string eesnimi2 = Console.ReadLine();
            Console.WriteLine("Tere, " + eesnimi2);

            Console.WriteLine("Täna te olete pinginaabrid, "+eesnimi1 +" ja "+eesnimi2);

            Console.WriteLine("Kirjuta cm1 sein");
            int cm1 = Math.Abs(int.Parse(Console.ReadLine()));
            Console.WriteLine("Kirjuta cm2 sein");
            int cm2 = Math.Abs(int.Parse(Console.ReadLine()));

            Console.WriteLine("Põranda pindala!");
            Console.WriteLine(cm1*cm2+"cm2");
            Console.WriteLine("Kas tahad remonti teha");
            string otvet = Console.ReadLine();
            if (otvet == "jah")
            {
                Console.WriteLine("Kui suur ruud meetri hind");
                decimal hind = decimal.Parse(Console.ReadLine());
                Console.WriteLine(Math.Round(hind * ((cm1 / 100) * (cm2 / 100)), 2) + "- summa");
            }
            else
            {
                Console.WriteLine("Head aega!");
            }

            Console.WriteLine("------------");
            int arv = int.Parse(Console.ReadLine());
            if (arv == 0)
            {
                int procent = (arv + 30 / 100);
                Console.WriteLine("s? {0},arv - procent");
            }
            Console.WriteLine("Kirjuta temperaatur");
            decimal temp = decimal.Parse(Console.ReadLine());
            if (temp < 18)
            {
                Console.WriteLine(temp + "see väike temperatuur");
            }
            else if (temp > 18)
            {
                Console.WriteLine(temp + "see suur temperatuur");
            }
            else if (temp == 18)
            {
                Console.WriteLine(temp + "see normaalne temperatuur");
            }
            Console.ReadLine();

            Console.WriteLine("\nwhat is your height in centimeters");
            int height = int.Parse(Console.ReadLine());
            if (height<50 && height > 300)
            {
                Console.WriteLine("error");
            }
            else if (height < 100 && height > 49)
            {
                Console.WriteLine("Väike inemene!");
            }
            else if (height < 200 && height > 99)
            {
                Console.WriteLine("Sinu pikkus on keskmine");
            }
        }
    }
}
