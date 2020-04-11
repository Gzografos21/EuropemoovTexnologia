using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TexnologiaProject
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BtnLogOut.Visible = false;
            try
            {
                if (Session["userid"].ToString() != "")
                {
                    BtnLogOut.Visible = true;
                }
                else
                {
                }
            }
            catch (Exception ex)
            { 
            }
            
        }

        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session["userid"] = "";
        }
    }
}