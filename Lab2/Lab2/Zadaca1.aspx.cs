using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class Zadaca1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string[] months = {"Јануари", "Февруари", "Март", "Април", "Мај", "Јуни", "Јули", 
                                "Авгутст", "Септември", "Октомври",
                                "Ноември", "Декември"};
            
            
            for(var i = 0; i<months.Length; i++)
            {
                ddlMesec.Items.Add(months[i]);
            }

            for(var i = 1; i<=31; i++)
            {
                ddlDen.Items.Add(i.ToString());
            }

           var tekovna = DateTime.Now.Year;

           for(var i=tekovna; i<=2026; i++)
            {
                ddlGodina.Items.Add(i.ToString());
            }


            for(var i=0; i<=9; i++)
            {
                ddlVreme.Items.Add("0" + i.ToString() + ":00");  
            }

            for(var i=10; i<=23; i++)
            {
                ddlVreme.Items.Add(i.ToString() + ":00");
            }

        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            lblPatnik.Text = txtIme.Text + " " + txtPrezime.Text ;
            lblOd.Text = ddlOd.SelectedValue;
            lblDo.Text = ddlDo.SelectedValue;
            lblVreme.Text = ddlDen.SelectedValue + " " + ddlMesec.SelectedValue + " " + ddlGodina.SelectedValue + " во " + ddlVreme.SelectedValue + " часот";
            lblZona.Text = rblZona.SelectedItem.Value;
            lblKlasa.Text = rblKlasa.SelectedItem.Value;
            lblPoraka.Text = lstSredstvo.SelectedValue;

            if(lblPoraka.Text == "Авион")
            {
                imgSlika.ImageUrl = "https://img.jakpost.net/c/2021/01/09/2021_01_09_109750_1610195089._large.jpg";
            }
            else
            {
                imgSlika.ImageUrl = "https://media.kasperskydaily.com/wp-content/uploads/sites/92/2015/12/06023356/train-hack-featured-1.jpg";
            }

            foreach(ListItem item in cblPosluga.Items)
            {
                if (item.Selected)
                {
                    lblPosluga.Text += item.Value + " ";
                }
            }

            Panel1.Visible = true;
            
            
            
        }
    }
}