using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data.SqlClient;

public partial class Admin_Login : System.Web.UI.Page
{
    string conn_string = System.Configuration.ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
      
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
            
            string unm = username.Text;
            string pwd = password.Text;

            if (!string.IsNullOrEmpty(unm) && !string.IsNullOrEmpty(pwd))
            {
                // Create connection
                SqlConnection connection = new SqlConnection(conn_string);

                string query = "SELECT username,password FROM Login_TB WHERE username='" + unm + "' AND password='" + pwd + "'";

                // Create command with parameters
                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();

                //Data read from the database table login..
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    string user = reader["username"].ToString();
                    string pass = reader["password"].ToString();

                    reader.Close();

                    Response.Redirect("Default.aspx");
                    // connection.Close();
                }
                else
                {
                    Response.Write("<script> alert('Please Enter Username or Password!!')</script>");
                }

            }

    }

        //if (username.Text == "admin" && password.Text == "1234")
        //{
        //    Response.Write("<script> alert('Admin Log In Success!!!')</script>");
        //    Response.Redirect("Default.aspx");
        //}
        //else
        //{
        //    Response.Write("<script> alert('Plaease Enter Valid Username or Password!!')</script>");
        //}
    }