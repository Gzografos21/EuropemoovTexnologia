using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TexnologiaProject
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSignup1_Click(object sender, EventArgs e)
        {
            string argUN = "";
            string argPS = "";
            string argEM = "";

            string returnedvalue = "";
            if (txtUsernameSU.Text.Trim() != "" && txtPasswordSU.Text.Trim() != "" && txtEmailSU.Text.Trim() != "")
            {
                argUN = txtUsernameSU.Text;
                argPS = txtPasswordSU.Text;
                argEM = txtEmailSU.Text;
                Users us = new Users();
                returnedvalue = us.InsertNewUser(argUN, argPS, argEM);
                //edw me to pou graftei o xristis kanw kateutheian login
                //opote xanakalw tin CheckUsernamePassoword me kainouria pleon orismata
                //mono to username kai password pou molis exoun ginei insert
                //ara uparxoun sti basi sigoura kai ton kanw redirect sto leaflet page TOU

                string id = us.CheckUsernamePassword(argUN, argPS);
                if (id != "ERROR" && returnedvalue != "ERROR")
                {
                    Session["userid"] = id;//session pio asfalis tropos kathws ta cookies fainontai
                    Response.Redirect("Profile.aspx");//pigene se auti ti selida (xwris na anoixeis nea kartela)                 
                }
                else
                {
                    LblErrorSU.Text = "Λάθος στοιχεία, ή ο χρήστης υπάρχει ήδη";
                }
            }
            else
            {
                this.LblErrorSU.Text = "Πρέπει να συμπληρώθούν όλα τα πεδία";
            }
        }
    }
}