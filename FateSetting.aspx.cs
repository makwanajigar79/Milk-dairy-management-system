using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class FateSetting : System.Web.UI.Page
{
    string conn_string = System.Configuration.ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
      
    protected void Page_Load(object sender, EventArgs e)
    {
        FillTextboxDetails();
       
    }

    private void FillTextboxDetails()
    {

        string query = "SELECT New_Fate_Price FROM Set_Fate_TB";

        SqlConnection connection = new SqlConnection(conn_string);
        SqlCommand command = new SqlCommand(query, connection);

        connection.Open();

        SqlDataReader reader = command.ExecuteReader();

        if (reader.Read())
        {
          
            string price = reader["New_Fate_Price"].ToString();

            reader.Close();


            // Fill the textbox with retrieved data
            
            txtCurrentFatePrice.Text = price;

            // connection.Close();
        }
        else
        {
            txtNewFatePrice.Text = "";


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
     //  txtCurrentFatePrice.Text= DateTime.Now.ToString();

        if (txtNewFatePrice.Text == "" || txtCurrentFatePrice.Text=="")
        {
            Response.Write("<script> alert('Please Enter Fate Price details!!!!  ')</script>");
        }

        else
        {
            
            SqlConnection con = new SqlConnection(conn_string);
            con.Open();

           string query = "update Set_Fate_TB SET Current_Fate_Price= '" + txtCurrentFatePrice.Text + "',New_Fate_Price='" + txtNewFatePrice.Text + "',Date='" + DateTime.Now.ToString()+"'";
           
            // SqlCommand CMD4 = new SqlCommand("insert into Set_Fate_TB values('" + txtCurrentFatePrice.Text + "','" + txtNewFatePrice.Text + "','" + DateTime.Now.ToString() + "')", con);
           
            SqlCommand CMD4 = new SqlCommand(query,con);
            CMD4.ExecuteNonQuery();
            con.Close();
            Response.Write("<script> alert('" + "New Fate Price = " + txtNewFatePrice.Text + "" + " Set Successfully!!!....  ')</script>");
           
            GridView1.DataBind();
            FillTextboxDetails();
            txtNewFatePrice.Text = "";
            txtCurrentFatePrice.Text = "";
        }
    }
    protected void txtNewFatePrice_TextChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {

    }
}