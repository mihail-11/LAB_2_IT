using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class Najava : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {


            if (txtLozinka.Text == "mp")
            {
                Session["Korisnik"] = txtKorisnik.Text;
                Response.Redirect("GlavnaStranica.aspx");
            }

            int countFault = 0;
            if (lblObidi.Text != "")
            {
                countFault = Int32.Parse(lblObidi.Text);
            }
            countFault++;
            
            if(countFault>2)
            {
                btnPodnesi.Enabled = false;
                lblObidi.Text = "GO NADMINA BROJOT NA OBIDI!";
            }
            else
            {
                lblObidi.Text = countFault.ToString();
            }

        }
    }
}