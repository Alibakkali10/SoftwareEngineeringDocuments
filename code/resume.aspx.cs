using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelerie
{
    public partial class resume : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblVille.Text = Session["VilleHotel"] != null ? Session["VilleHotel"].ToString() : "";
                lblTypeChambre.Text = Session["TypeChambre"] != null ? Session["TypeChambre"].ToString() : "";
                lblOptions.Text = Session["DescriptionOptions"] != null ? Session["DescriptionOptions"].ToString() : "";
                lblRepas.Text = Session["RepasChoisis"] != null ? Session["RepasChoisis"].ToString() : "";
                lblPrixTotal.Text = Session["PrixTotal"] != null ? Session["PrixTotal"].ToString() : "";

                if (Session["DescriptionSuite"] != null)
                {
                    lblDescription.Text = Session["DescriptionSuite"].ToString();
                }
                else
                {
                    lblDescription.Text = "Chambre réservée avec options personnalisées.";
                }
                lblPetit.Text = Session["HeurePetit"] != null ? Session["HeurePetit"].ToString() : "Non choisi";
                lblDej.Text = Session["HeureDej"] != null ? Session["HeureDej"].ToString() : "Non choisi";
                lblDiner.Text = Session["HeureDiner"] != null ? Session["HeureDiner"].ToString() : "Non choisi";
            }

        }

        protected void btnConfirmer_Click(object sender, EventArgs e)
        {
            Response.Redirect("merci.aspx");
        }

        protected void btnRetour_Click(object sender, EventArgs e)
        {
            if (Session["PageRetour"] != null)
            {
                Response.Redirect(Session["PageRetour"].ToString());
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}