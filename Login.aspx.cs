using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.IO;
using System.Reflection;
using System.Web.Services;
using System.Drawing;



namespace TexnologiaProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BtnLogin.BackColor = Color.LightGray;

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string id = "ERROR";
            Users us = new Users();
            id = us.CheckUsernamePassword(txtUsernameLI.Text, txtPasswordLI.Text);
            if (id == "14")//vazw karfwta ton xristi me id 14 sti vasi ws administrator
            {
                Session["userid"] = id;
                Response.Redirect("Admin.aspx");
            }
            if (id != "ERROR")
            {
                Session["userid"] = id;//session pio asfalis tropos kathws ta cookies fainontai
                Response.Redirect("Leaflet.aspx");//pigene se auti ti selida (xwris na anoixeis nea kartela)
            }
            else
            {
                LblError.Text = "does not exist";
                //
            }

        }
    }
}