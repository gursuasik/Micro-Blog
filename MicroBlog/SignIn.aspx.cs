using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MicroBlog
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection connect = new OleDbConnection(ConfigurationManager.ConnectionStrings["DBConnect"].ConnectionString);
            connect.Open();
            OleDbCommand command = new OleDbCommand("INSERT INTO Users (UserName, Pass) VALUES (@UserName, @Pass)", connect);
            command.Parameters.AddWithValue("@UserName", TextBox1.Text);
            command.Parameters.AddWithValue("@Pass", TextBox2.Text);
            command.ExecuteNonQuery();
            connect.Close();
            Response.Redirect("Main.aspx");
        }
    }
}