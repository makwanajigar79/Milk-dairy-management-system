using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class PasswordSetting : System.Web.UI.Page
{
    string conn_string = System.Configuration.ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string txtNewPwd = TextBox1.Text;
        string txtConfirmPwd = TextBox2.Text;

        if (txtConfirmPwd == "" || txtNewPwd=="")
        {
            Response.Write("<script> alert('Please fill The Both Password fields* ')</script>");
            TextBox1.Focus();
        }


        else if (txtConfirmPwd == txtNewPwd)
        {
            SqlConnection con = new SqlConnection(conn_string);
            con.Open();
            Response.Write("<script> alert('Your Password was Changed successfully!!  ')</script>");

            string query = "UPDATE Login_TB SET password =" + txtNewPwd + " WHERE username = username";
            SqlCommand CMD4 = new SqlCommand(query, con);
            CMD4.ExecuteNonQuery();
            con.Close();

            TextBox1.Text = "";
            TextBox2.Text = "";
        }
        else
        {
            Response.Write("<script> alert('Confirm password and New password are not same!!  ')</script>");
            TextBox2.Focus();
        }
    }
}