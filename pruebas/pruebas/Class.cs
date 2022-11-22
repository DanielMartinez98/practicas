using System.Diagnostics;
using System.Timers;
using System.Threading;

namespace pruebas
{
    public  class Class
    {
        public static Thread t1;
        public static bool clear = true;
        public static void startThread() 
        {   
            t1 = new Thread(OnTimedEvent);
            Console.WriteLine("se inicio el listado");
            t1.Start();
        }
        public static void OnTimedEvent()
        {
            System.Threading.Thread.Sleep(10000);
            clear = true;
            OnTimedEvent();
        }
    }
}
