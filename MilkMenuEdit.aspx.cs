using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MilkMenuEdit : System.Web.UI.Page
{
    string conn_string = System.Configuration.ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
     
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void FillTextboxDetails()
    {

        string query = "SELECT First_Name,Address FROM Account_TB WHERE Ac_ID ='" +  TextBox1.Text+"'";

        SqlConnection connection = new SqlConnection(conn_string);
        SqlCommand command = new SqlCommand(query, connection);

        connection.Open();

        SqlDataReader reader = command.ExecuteReader();

        if (reader.Read())
        {
            string firstName = reader["First_Name"].ToString();
            string address = reader["Address"].ToString();

            reader.Close();


            // Fill the textbox with retrieved data
            TextBox2.Text = firstName;
            TextBox3.Text = address;
           

            // connection.Close();
        }
        else
        {
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox1.Text = "";


        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        FillTextboxDetails();

      
        string search = TextBox1.Text.Trim().ToLower();

        foreach (GridViewRow row in GridView1.Rows)
        {
            foreach (TableCell cell in row.Cells)
            {
                if (cell.Text.ToLower().Contains(search))
                {
                    cell.Text = cell.Text.Replace(search, "<span class='highlight'>" + search + "</span>");
                }
               
            }
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        Response.Write("<script> alert('Record Deleted Successfully!!!....  ')</script>");
    }
    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        Response.Write("<script> alert('Record Updated Successfully!!!....  ')</script>");
    }
  
}