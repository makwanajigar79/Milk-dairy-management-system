using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Print_Salary_Receipt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OpS_id.Text = Session["sid"].ToString();
        opAcid.Text = Session["acid"].ToString();
        OpName.Text = Session["fnm"].ToString();
        OpCattle.Text = Session["cattle"].ToString();
        OpFromDate.Text = Session["sfdate"].ToString();
        OpTodayDate.Text = Session["stdate"].ToString();
        OpTotal_Liter.Text = Session["totalliter"].ToString();
        OpTotal_Salary.Text = Session["totalsal"].ToString();
        OpPaymentDate.Text = Session["paydate"].ToString();
        
    }
}