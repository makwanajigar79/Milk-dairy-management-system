using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SalarySetting : System.Web.UI.Page
{
    string conn_string = System.Configuration.ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
       string date = DateTime.Now.ToString("dd/MM/yyyy");
       
       lblTDate.Text = date;
    }

    public void LastPaymentDate()
    {
        string query = "Select Payment_Date from Salary_TB where Ac_ID='"+txtAcid.Text+"'";
        SqlConnection con = new SqlConnection(conn_string);
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();

        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            //if the reader read success Than payment date show in label ... pahela pan salary generate kari hoy to..
            string pdate = reader["Payment_Date"].ToString();
            reader.Close();

            lblLastDate.Text = pdate;
        }

        else if(!reader.Read())
        {
            //if first time salary generate karvani hoy to.... milk_data_TB mathi... date aavse,...

            lblLastPaymentDate.Text = "From Date :";
             query = "select Date from Milk_Data_TB where Ac_ID='"+txtAcid.Text+"'";
            con = new SqlConnection(conn_string);
            cmd = new SqlCommand(query, con);
            con.Open();

           reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                string pdate = reader["Date"].ToString();
                reader.Close();

              
                lblLastDate.Text = pdate;
              
            }
        }
    }

    protected void txtAcid_TextChanged(object sender, EventArgs e)
    {
        //fill the details
        FillTextboxDetails();
    }

    private void FillTextboxDetails()
    {
        string query = "SELECT First_Name,Cattle,Liter,Total_price,Date FROM Milk_Data_TB WHERE Ac_ID ='" + txtAcid.Text+"'";

        SqlConnection connection = new SqlConnection(conn_string);
        SqlCommand command = new SqlCommand(query, connection);

        connection.Open();

        SqlDataReader reader = command.ExecuteReader();

        if (reader.Read())
        {
            string firstName = reader["First_Name"].ToString();
            string cattle = reader["Cattle"].ToString();

            reader.Close();


            // Fill the textbox with retrieved data
            txtCattle.Text = cattle;
            txtName.Text = firstName;

            // connection.Close();
        }
        else
        {
            txtName.Text = "";
            txtCattle.Text = "";
        }
    }

    public void Filltotal_Liter()
    {
        //Total Liter Gridview mathi count thase label ma..

        decimal total_Liter = 0;

        foreach (GridViewRow row in GridView1.Rows)
        {
            decimal value;
            if (decimal.TryParse(row.Cells[3].Text, out value))
            {
                total_Liter += value;
            }
            lblLiter.Text = total_Liter.ToString();
        }
    }

   
    public void Filltotal_Price()
    {
        //label ma total price thase... Gridview ma jetla data aavse aemathi..

        decimal total = 0;

        foreach (GridViewRow row in GridView1.Rows)
        {
            decimal value;
            if (decimal.TryParse(row.Cells[4].Text, out value))
            {
                total += value;
            }
            lblTotal.Text = total.ToString();
        }
    }


    protected void btnSearch_Click(object sender, EventArgs e)
    {

        if (txtAcid.Text == "" && txtName.Text == "")
        {
            Response.Write("<script> alert('Please Enter All details!!!!  ')</script>");
        }

        else
        {
            Filltotal_Liter();
            Filltotal_Price();
            LastPaymentDate();
            DifferenceDates();

            lblNoOfDays.Enabled = false;
          
        }
    }

    public void insertData()
    {
        if (txtAcid.Text == "")
        {
            Response.Write("<script> alert('Please Enter All details!!!!  ')</script>");

        }

        else
        {
            Response.Write("<script> alert('" + txtName.Text  + " Salary Rs. " +lblTotal.Text+ " Generated Successfully!!!....  ')</script>");

            string Todaydate = DateTime.Now.ToString("dd/MM/yyyy");
            SqlConnection con = new SqlConnection(conn_string);
            con.Open();

            SqlCommand CMD4 = new SqlCommand("insert into Salary_TB values('" + txtAcid.Text + "','" + txtName.Text + "','" + txtCattle.Text + "','" + lblLastDate.Text + "','" + lblTDate.Text +"','"+ lblLiter.Text +"','"+lblTotal.Text +"','"+Todaydate+ "')", con);
            CMD4.ExecuteNonQuery();
            con.Close();
            GridView2.DataBind();
            txtAcid.Text = "";
            txtName.Text = "";
            txtCattle.Text = "";
            lblTotal.Text = "";
            lblTodayDate.Text = "";
        }

    }
    protected void Generate_Button_Click(object sender, EventArgs e)
    {

        Response.Write("<script> confirm('Do you Want to Confirm To Generate Salary??')</script>");

        if (false)
        {
            Response.Write("<script> alert('Not Inserted')</script>");
        }
        else
        {
            insertData();
        }
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

        //Print the receipt code... using session
        int index = GridView2.SelectedIndex;

        if (index >= 0)
        {
            GridViewRow selectedRow = GridView2.SelectedRow;
            string sid = "", acid = "", fnm = "", catle = "", s_f_date = "", s_t_date = "", totalliter = "", totalsal = "", paydate = "";

            for (int i = 0; i < selectedRow.Cells.Count; i++)
            {
                if (i == 1)
                {
                    sid = selectedRow.Cells[i].Text + " ";
                    lblPrintsid.Text = sid;
                    Session["sid"] = lblPrintsid.Text;
                }
                else if (i == 2)
                {
                    acid = selectedRow.Cells[i].Text + "";
                    lblPrintAcid.Text = acid;
                    Session["acid"] = lblPrintAcid.Text;
                }
                else if (i == 3)
                {
                    fnm = selectedRow.Cells[i].Text + "";
                    lblPrintFnm.Text = fnm;
                    Session["fnm"] = lblPrintFnm.Text;
                }
                else if (i == 4)
                {
                    catle = selectedRow.Cells[i].Text + "";
                    lblPrintCatle.Text = catle;
                    Session["cattle"] = lblPrintCatle.Text;
                }
                else if (i == 5)
                {
                    s_f_date = selectedRow.Cells[i].Text + "";
                    lblSFdate.Text = s_f_date;
                    Session["sfdate"] = lblSFdate.Text;
                }
                else if (i == 6)
                {
                    s_t_date = selectedRow.Cells[i].Text + "";
                    lblPrintSTdate.Text = s_t_date;
                    Session["stdate"] = lblPrintSTdate.Text;
                }
                else if (i == 7)
                {
                    totalliter = selectedRow.Cells[i].Text + "";
                    lblPrintTotalLiter.Text = totalliter;
                    Session["totalliter"] = lblPrintTotalLiter.Text;
                }
                else if (i == 8)
                {
                    totalsal = selectedRow.Cells[i].Text + "";
                   lblPrintTotal_sal.Text = totalsal;
                    Session["totalsal"] = lblPrintTotal_sal.Text;
                }
                else if (i == 9)
                {
                    paydate = selectedRow.Cells[i].Text + "";
                    lblPrintPayDate.Text = paydate;
                    Session["paydate"] = lblPrintPayDate.Text;
                }
                else if (i == 10)
                {
                    paydate = selectedRow.Cells[i].Text + "";
                    lblPrintPayDate.Text = paydate;
                    Session["paydate"] = lblPrintPayDate.Text;
                }
            }
        }
    }
    protected void btnPrint_Click(object sender, EventArgs e)
    {
        if (GridView2.SelectedRow == null)
        {
            Response.Write("<script> alert('Please select The Row in table First!!!')</script>");
        }
        else if (!string.IsNullOrEmpty(lblPrintAcid.Text))
        {
           
         //   ClientScript.RegisterStartupScript(this.GetType(), "PrintScript", "alert('Printing From Ac ID = " + lblPrintAcid.Text + "');", true);
            Response.Redirect("Print_Salary_Receipt.aspx");
        }
        //else
        //{
        //    ClientScript.RegisterStartupScript(this.GetType(), "NoSelectionScript", "alert('Please select a row to print.');", true);
        //}
    }

    public void DifferenceDates()
    {

        string startDate = lblLastPaymentDate.Text;
        string enddate =lblTodayDate.Text;

        string query = "select * from Salary_TB where Salary_From_Date>='"+startDate+"'and Salary_To_Date <='"+enddate+"'";

        SqlConnection con = new SqlConnection(conn_string);
        SqlCommand cmd = new SqlCommand(query,con);

        con.Open();
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            DataTable dt = new DataTable();
            dt.Load(reader);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }

}