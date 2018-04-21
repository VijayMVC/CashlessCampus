using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class addBook : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtName.Text == string.Empty || txtAuthor.Text == string.Empty || txtPrice.Text == string.Empty || txtFine.Text == string.Empty)
            {
                lblDisp.Text = "All Feilds Must be Filled";
            }
            else
            {
                con.open_connection();
                string st = "insert into book values ('" + txtName.Text + "','" + txtAuthor.Text + "','" + txtPrice.Text + "','" + txtFine.Text + "')";
                SqlCommand cmd = new SqlCommand(st, con.con_pass());
                cmd.ExecuteNonQuery();
                con.close_connection();
                lblDisp.Text = "Book Details Added Successfully";
                
            }
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
    }
}