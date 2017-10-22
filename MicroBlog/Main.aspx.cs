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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["LikePostID"] != null && Request.QueryString["LikePostID"].Length > 0)
            {
                LikeLabel.Text = "Like";
            }
            else
            {
                LikeLabel.Text = "Dislike";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection connect = new OleDbConnection(ConfigurationManager.ConnectionStrings["DBConnect"].ConnectionString);
            connect.Open();
            OleDbCommand command = new OleDbCommand("INSERT INTO Posts (UserID, PostContent) VALUES (@UserID, @PostContent)", connect);
            command.Parameters.AddWithValue("@UserID", Convert.ToInt16(Session["UserID"]));
            command.Parameters.AddWithValue("@PostContent", TextBox1.Text);
            command.ExecuteNonQuery();
            connect.Close();
            Response.Redirect("Main.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            OleDbConnection connect = new OleDbConnection(ConfigurationManager.ConnectionStrings["DBConnect"].ConnectionString);
            connect.Open();
            OleDbCommand command = new OleDbCommand("INSERT INTO Comments (PostID, CommentContent) VALUES (@PostID, @CommentContent)", connect);
            command.Parameters.AddWithValue("@PostID", Convert.ToInt16(Session["UserID"]));
            command.Parameters.AddWithValue("@CommentContent", TextBox2.Text);
            command.ExecuteNonQuery();
            connect.Close();
            Response.Redirect("Main.aspx");

        }
    }
}