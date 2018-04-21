using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class IssueBook : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.open_connection();
            string str = "select *  from Book";
            SqlCommand cmd = new SqlCommand(str, con.con_pass());
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                DropDownList1.Items.Add(dr["bname"].ToString());
            }
            con.close_connection();
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.open_connection();
        string str = "select *  from Book where bname='"+DropDownList1.SelectedItem+"'";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            txtName.Text = dr["bname"].ToString();
            txtAuthor.Text = dr["aname"].ToString();
            txtPrice.Text = dr["price"].ToString();
            txtFine.Text = dr["fperday"].ToString();
        }
        con.close_connection();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtTag.Text == string.Empty || txtName.Text == string.Empty || txtFine.Text == string.Empty || txtAuthor.Text == string.Empty || txtPrice.Text == string.Empty)
        {
            lblDisp.Text = "All Feilds Must be Filled";
        }
        else
        {
            try
            {
                con.open_connection();
                string str = "insert into issue_Book values ('"+txtTag.Text+"','"+DropDownList1.SelectedItem+"','"+txtAuthor.Text+"','"+txtPrice.Text+"','"+txtFine.Text+"','"+System.DateTime.Now.ToShortDateString()+"')";
                SqlCommand cmd = new SqlCommand(str,con.con_pass());
                cmd.ExecuteNonQuery();
                con.close_connection();
                lblDisp.Text = "Book Issued Successfulluy";
            }
            catch (Exception ex)
            {

            }
        }
    }
}