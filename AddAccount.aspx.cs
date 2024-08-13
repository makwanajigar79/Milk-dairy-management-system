using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;


public partial class AddAccount : System.Web.UI.Page
{

    string conn_string = System.Configuration.ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        
    

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnAddAccount_Click(object sender, EventArgs e)
    {
        if (txtFname.Text=="" | txtLname.Text=="")
        {
            Response.Write("<script> alert('Please Enter All details!!!!  ')</script>");

        }

        else{
         

            Response.Write("<script> alert('" + txtFname.Text + " " + txtLname.Text + "" + " Added Successfully!!!....  ')</script>");

            SqlConnection con = new SqlConnection(conn_string);
            con.Open();

            SqlCommand CMD4 = new SqlCommand("insert into Account_TB values('" + txtFname.Text + "','" + txtLname.Text + "','" + txtAddress.Text + "','" + txtMobile.Text + "','" + DropDownList1.SelectedValue.ToString() + "')", con);
            CMD4.ExecuteNonQuery();
            con.Close();

            txtFname.Text = "";
            txtLname.Text = "";
            txtAddress.Text = "";
            txtMobile.Text = "";
        }
        }
   
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int Mono = Convert.ToInt32(txtMobile.Text.Length);

        if (Mono != 10)
        {
            Response.Write("<script> alert('Error : plz Check Mobile No Size!!!')</script>");

        }
    }
}