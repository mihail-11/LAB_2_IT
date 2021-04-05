using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class Zadaca_2_B : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            var godIskustvo = iskustvo.Text;
            Int32.Parse(godIskustvo);
            if (vldSum.ShowSummary == true && Int32.Parse(godIskustvo) > 5 && zanimanje.Text!= "-занимање-")
            {
                username.Text = txtID.Text + "@finki.ukim.mk";
            }
            else
            {
                username.Text = "Неуспешна валидација!";
            }
        }
    }
}