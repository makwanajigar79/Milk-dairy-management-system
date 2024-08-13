using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class BuyMilk : System.Web.UI.Page
{
    string conn_string = System.Configuration.ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

        LabelDate.Text = DateTime.Now.ToString("dd/MM/yyyy");
        DateTimeShow();
        Label11.Text = GridView1.Rows.Count.ToString();
       
        // decimal total = 0;

        //foreach (GridViewRow row in GridView1.Rows)
        //{
        //    decimal value;
        //    if(decimal.TryParse(row.Cells[5].Text,out value))
        //    {
        //        total+=value;
        //    }
        //    Label12.Text = "Total = "+total.ToString();
        //}
        
    }

    protected void txtFate_TextChanged(object sender, EventArgs e)
    {
        FillPriceLiter();
        FillTotalPrice();
    }


    private void DateTimeShow()
    {
        DateTime currentTime = DateTime.Now;
        string timeOfDay;

        if (currentTime.Hour < 12)
        {
            timeOfDay = "Morning";
            LabelDate_Day.Text=timeOfDay;
        }
        else if (currentTime.Hour < 17)
        {
            timeOfDay = "Afternoon";
            LabelDate_Day.Text=timeOfDay;
        }
        else
        {
            timeOfDay = "Evening";
            LabelDate_Day.Text=timeOfDay;
        }

       
    }


    //Insert Data into the Milk_Data_TB

    public void Add_Buy_Milk_info()
    {

        

        Response.Write("<script> confirm('Do you want to Add Record? ')</script>");


       
            if (txtAcno.Text == "" && Label3.Text == "" && txtFate.Text == "" && txtLitter.Text == "")
            {

                Response.Write("<script> alert('Please Fill All The Information!! ')</script>");

            }
            else
            {
                string TodayDate = LabelDate.Text;
                SqlConnection con = new SqlConnection(conn_string);
                con.Open();


                SqlCommand CMD4 = new SqlCommand("insert into Milk_Data_TB values('" + txtAcno.Text + "','" + Label3.Text + "','" + txtCattle.Text + "','" + txtLitter.Text + "','" + txtFate.Text + "','" + txtTotalPrice.Text + "','" + TodayDate + "','" + LabelDate_Day.Text + "')", con);
                CMD4.ExecuteNonQuery();
                con.Close();

                GridView1.DataBind();

                Label11.Text = GridView1.Rows.Count.ToString();
                txtCattle.Text = "";
                txtAcno.Text = "";
                txtFate.Text = "";
                txtLitter.Text = "";
            
        }
    

    }

  
    public void FillTextboxDetails()
    {

       // int acno = Convert.ToInt32(txtAcno.Text);
        string sqlquery = "SELECT First_Name,Address,Cattle FROM Account_TB WHERE Ac_ID= @acid";

        using (SqlConnection con = new SqlConnection(conn_string))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(sqlquery, con);
            cmd.Parameters.AddWithValue("@acid",txtAcno.Text);

            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                string fname = reader["First_Name"].ToString();
                string addr = reader["Address"].ToString();
                string Cattle = reader["Cattle"].ToString();

               // reader.Close();

                Label3.Text = fname;
                Label5.Text = addr;
                txtCattle.Text = Cattle;
            }
        }
        
    }

    protected void txtPriceLitter_TextChanged(object sender, EventArgs e)
    {
        //FillPriceLiter();
    }

    public void FillPriceLiter()
    {
        //get tge information from fate price
        string query = "Select  New_Fate_Price from Set_Fate_TB";
        SqlConnection connection = new SqlConnection(conn_string);
        SqlCommand command = new SqlCommand(query, connection);

        connection.Open();

        SqlDataReader reader = command.ExecuteReader();

        if (reader.Read())
        {
            string newFatePrice = reader["New_Fate_Price"].ToString();

            reader.Close();

            int value = Convert.ToInt32(newFatePrice);
            int price = value * 10;

            //shwing into the textbox..
            txtPriceLitter.Text = price.ToString();
        }

    }

    public void FillTotalPrice()
    {
        //get tge information from fate price
        string query = "Select  New_Fate_Price from Set_Fate_TB";
        SqlConnection connection = new SqlConnection(conn_string);
        SqlCommand command = new SqlCommand(query, connection);

        connection.Open();

        SqlDataReader reader = command.ExecuteReader();

        if (reader.Read())
        {
              string newFatePrice = reader["New_Fate_Price"].ToString();
            //fetch the fateprice from the database table set_fate_table..
              int value = Convert.ToInt32(newFatePrice);
              int liter = Convert.ToInt32(txtLitter.Text);
              int n = 10;

              int total = liter * value * n;
              txtTotalPrice.Text = Convert.ToString(total);
       
              reader.Close();
        }

        // End data for fate price
        connection.Close();
      
    }


    public void Filltxtbox()
    {
       
        string query = "select First_Name,Address,Cattle from Account_TB where Ac_ID='"+txtAcno.Text+"'";

        SqlConnection connection = new SqlConnection(conn_string);
        SqlCommand command  =new SqlCommand(query, connection);

        connection.Open();

        SqlDataReader reader=command.ExecuteReader();

        if (reader.Read())
        {
            string firstName = reader["First_Name"].ToString();
            string address = reader["Address"].ToString();
            string cattle = reader["Cattle"].ToString();

            reader.Close();


            // Fill the textbox with retrieved data
            Label3.Text = firstName;
            Label5.Text = address;
            txtCattle.Text = cattle;

            // connection.Close();
        }
        else
        {
            txtCattle.Text = "";
            Label3.Text = "";
            Label5.Text = "";


        }
    
    }
    protected void txtAcno_TextChanged(object sender, EventArgs e)
    {
    //FillTextboxDetails();
       Filltxtbox();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       
            Add_Buy_Milk_info();
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        //This is used for the print receipt for selected data on gridview..

        // select the row index...
        int index = GridView1.SelectedIndex;
        if (index >= 0)
        {
            GridViewRow selectedRow = GridView1.SelectedRow;
            string mid="", acid="",fnm="",catle="",liter="",fate="",totalprice="",date="",session="";
    
            //This loop count the selected row horizontly... column start with 0... 
            for (int i = 0; i < selectedRow.Cells.Count; i++)
            {
                if (i == 1)
                {
                    // selected row ni column ma cells ni index ma je value hase aeni value label ma show thase.
                    mid = selectedRow.Cells[i].Text + " ";
                    lblPrintM_ID.Text = mid;
                    Session["mid"] = lblPrintM_ID.Text;
                }
                else if (i == 2)
                {
                    acid = selectedRow.Cells[i].Text + "";
                    lblPrintAc_ID.Text = acid;
                    Session["acid"] = lblPrintAc_ID.Text;
                    //session through one page to another page par values jase.
                    
                }
                else if (i == 3)
                {
                    fnm = selectedRow.Cells[i].Text + "";
                    lblPrintFirstName.Text = fnm;
                    Session["fnm"] = lblPrintFirstName.Text;
                }
                else if (i == 4)
                {
                    catle = selectedRow.Cells[i].Text + "";
                    lblPrintcattle.Text = catle;
                    Session["cattle"] = lblPrintcattle.Text;
                }
                else if (i == 5)
                {
                    liter = selectedRow.Cells[i].Text + "";
                    lblPrintLiter.Text = liter;
                    Session["liter"] = lblPrintLiter.Text;
                }
                else if (i == 6)
                {
                    fate = selectedRow.Cells[i].Text + "";
                    lblPrintFate.Text = fate;
                    Session["fate"] = lblPrintFate.Text;
                }
                else if (i == 7)
                {
                    totalprice = selectedRow.Cells[i].Text + "";
                    lblPrintTotal_Price.Text = totalprice;
                    Session["totprice"] = lblPrintTotal_Price.Text;
                }
                else if (i == 8)
                {
                    date = selectedRow.Cells[i].Text + "";
                    lblPrintDate.Text = date;
                    Session["date"] = lblPrintDate.Text;
                }
                else if (i == 9)
                {
                    session = selectedRow.Cells[i].Text + "";
                    lblPrintsession.Text = session;
                    Session["session"] = lblPrintsession.Text;
                }
                else if (i == 10)
                {
                    session = selectedRow.Cells[i].Text + "";
                    lblPrintsession.Text = session;
                    Session["session"] = lblPrintsession.Text;
                }
            }
        }
    }
    protected void btnPrint_Click(object sender, EventArgs e)
    {
        if (GridView1.SelectedRow == null)
        {
            Response.Write("<script> alert('Please select The Row in table First!!!')</script>");
        }
        else if (!string.IsNullOrEmpty(lblPrintAc_ID.Text))
        {
            //Response.Write("<script> alert('Print the accont id "+lblPrintAc_ID.Text+" ')</script>");
           // ClientScript.RegisterStartupScript(this.GetType(), "PrintScript", "alert('Printing From Ac ID = " + lblPrintAc_ID.Text + "');", true);
            Response.Redirect("Print_Information.aspx");
        }
        else
        {
           // ClientScript.RegisterStartupScript(this.GetType(), "NoSelectionScript", "alert('Please select a row to print.');", true);
        }
       
    }
}