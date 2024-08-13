using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Print_Information : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        opM_id.Text = Session["mid"].ToString();
        opAcid.Text = Session["acid"].ToString();
        OpName.Text = Session["fnm"].ToString();
        OpCattle.Text = Session["cattle"].ToString();
        OpLiter.Text = Session["liter"].ToString();
        OpFate.Text = Session["fate"].ToString();
        OpTotal_Price.Text = Session["totprice"].ToString();
        OpDate.Text = Session["date"].ToString();
        OpSession.Text = Session["session"].ToString();
        lblRDate.Text = DateTime.Now.ToString();
    }
}