using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel
{
    public partial class Dashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReserve_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reserve.aspx");
        }

        protected void btnReservations_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reservations.aspx");
        }
    }
}