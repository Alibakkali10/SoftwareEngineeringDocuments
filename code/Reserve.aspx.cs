using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel
{
    public partial class Reserve : Page
    {
    
        public interface IHotelObserver
        {
            void Update(string hotelName);
        }

        public class HotelNotifier
        {
            private List<IHotelObserver> observers = new List<IHotelObserver>();

            public void Attach(IHotelObserver observer) => observers.Add(observer);
            public void Detach(IHotelObserver observer) => observers.Remove(observer);

            public void Notify(string hotelName)
            {
                foreach (var observer in observers)
                {
                    observer.Update(hotelName);
                }
            }
        }

        public class HotelLogger : IHotelObserver
        {
            public void Update(string hotelName)
            {
      
                Console.WriteLine("Hotel selected: " + hotelName);
            }
        }


        private static HotelNotifier notifier = new HotelNotifier();
        private static HotelLogger logger = new HotelLogger();

        static Reserve()
        {
            notifier.Attach(logger);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDubai_Click(object sender, EventArgs e)
        {
            notifier.Notify("Dubai");
            Response.Redirect("Dubai.aspx");
        }

        protected void btnMontreal_Click(object sender, EventArgs e)
        {
            notifier.Notify("Montreal");
            Response.Redirect("Montreal.aspx");
        }

        protected void btnTanger_Click(object sender, EventArgs e)
        {
            notifier.Notify("Tanger");
            Response.Redirect("Tanger.aspx");
        }

        protected void btnNewYork_Click(object sender, EventArgs e)
        {
            notifier.Notify("New York");
            Response.Redirect("NewYork.aspx");
        }
    }
}