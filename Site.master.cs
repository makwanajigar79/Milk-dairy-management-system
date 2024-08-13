using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LogOut_btn_Click(object sender, EventArgs e)
    {
        Response.Write("<script> alert('Log out successfully!!!')</script>");
        Response.Redirect("Admin_Login.aspx");
    }
}
