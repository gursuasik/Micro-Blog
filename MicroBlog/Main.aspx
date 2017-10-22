<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="MicroBlog.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MikroBlog</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!-- START PAGE SOURCE -->
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div id="wrap">
          <div id="wrap-container">
            <div id="topnav">
              <h1 id="sitename">Mikro Blog</h1>
              <ul id="nav">
                <li><a href="Main.aspx">Ana Sayfa</a></li>
                <li><a href="Post.aspx">Yayınlar</a></li>
                <li><a href="Login.aspx">Giriş</a></li>
                <li><a href="SignIn.aspx">Kayıt</a></li>
              </ul>
            </div>
            <div id="header">
              <div id="featuredpost">
                <div id="featuredthumb"> <img src="images/featuredimage.jpg" width="200" height="135" alt="" class="shadow" /></div>
                <div id="featuredcontent">
                    <div class="comments-form">
                        <%
                            if (Session["UserID"] != null)
                            {
                        %>      
                                <asp:TextBox ID="TextBox1" runat="server" MaxLength="255" TextMode="MultiLine" Width="500" Height="150" CssClass="formid"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" Text="Paylaş" CssClass="button" OnClick="Button1_Click" />
                        <%
                            }
                            else
                            {
                                Response.Write("Lütfen Giriş Yapınız...");
                            }   
                        %>
                    </div>
                </div>
                <div class="clear"></div>
              </div>
            </div>
            <div id="content">
              <div id="left">
                <div class="post">
                    <%
                        System.Data.OleDb.OleDbConnection connect = new System.Data.OleDb.OleDbConnection(ConfigurationManager.ConnectionStrings["DBConnect"].ConnectionString);
                        connect.Open();
                        System.Data.OleDb.OleDbCommand command = new System.Data.OleDb.OleDbCommand("SELECT Posts.ID, Posts.PostContent, Users.UserName FROM Posts INNER JOIN Users ON Users.ID=Posts.UserID ORDER BY Posts.ID DESC", connect);
                        System.Data.OleDb.OleDbDataReader reader = command.ExecuteReader();
                        while (reader.Read())
                        {
                    %>
                            <div class="postleft">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:Label ID="LikeLabel" runat="server" Text="Label"></asp:Label>
                                    </ContentTemplate>                 
                                </asp:UpdatePanel> 
                                <div class="comments"> <span class="count"><a id="Like" href="Main.aspx?LikePostID=<%=reader["ID"] %>">Beğen</a></span> </div>
                            </div>
                            <div class="postcontent">
                                <div class="postheader">
                                    <span class="postmeta"><%= reader["UserName"] %></span>
                                </div>
                                <p><%= reader["PostContent"] %><br /><br /></p>
                            </div>
                    <% 
                            System.Data.OleDb.OleDbCommand command1 = new System.Data.OleDb.OleDbCommand("SELECT PostID, CommentContent FROM Comments WHERE PostID=" + reader["ID"], connect);
                            System.Data.OleDb.OleDbDataReader reader1 = command1.ExecuteReader();
                            while (reader1.Read())
                            {
                    %>
                                <div id="comments" class="comments-list">
                                  <div class="entry " id="comment-4">
                                    <div class="con">
                                      <p><%=reader1["CommentContent"] %></p>
                                    </div>
                                  </div>
                                </div>
                    <%      
                            }
                            reader1.Close();
                            %>
                                <div class="comments-form">
                                    <asp:TextBox ID="TextBox2" runat="server" MaxLength="255" TextMode="MultiLine" Width="500" Height="50" CssClass="formid"></asp:TextBox>
                                    <asp:Button ID="Button2" runat="server" Text="Paylaş" CssClass="button" OnClick="Button2_Click" />
                                </div>
                            <%
                        }
                        reader.Close();
                        connect.Close();
                    %>
                </div>
                <div class="pagination clear">
                  <div class="pre"><a href="#">Previous</a></div>
                  <div class="next"><a href="#">next</a></div>
                </div>
              </div>
              <div id="sidebar">
                <div id="search">
                  <h2>Search</h2>
                  <form action="#">
                    <div id="searchfield">
                      <input type="text" name="s" class="keyword" />
                      <input type="image" src="images/searchbutton.png" />
                    </div>
                  </form>
                </div>
                <div id="sb_container">
                  <h2><span>Latest Posts</span></h2>
                  <div class="posts">
                    <ul>
                      <li><a href="#">Pellentesque odio ante, mle stie</a></li>
                      <li><a href="#">Curabitur et augue massa</a></li>
                      <li><a href="#">Morbi Vitae Velit Ante</a></li>
                      <li><a href="#">Dolar Sit Lorem Quisque Dictum Molestie</a></li>
                      <li><a href="#">Sample blog post</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="clear"></div>
            </div>
          </div>
          <div id="bottom">
            <div id="container">
              <div id="about">
                <div id="authorimage"><img src="images/authorimg.png" width="108" height="108" alt="" /> </div>
                <div id="authorbio">
                  <h2>About</h2>
                  <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel porttitor purus. Ut id mi vel mauris volutpat volutpat et vitae lorem. Duis nisi neque, ultricies scelerisque placerat ut, elementum eu elit. Quisque molestie velit at nisl aliquet id lobortis lorem euismod.</p>
                </div>
              </div>
              <div id="tags">
                <h2 class="title">Tag Cloud</h2>
                <div class="content"> <a href="#" class="level6">inspiration</a> <a href="#" class="level5">daily inspiration</a> <a href="#" class="level4">photography</a> <a href="#" class="level4">tutorial</a> <a href="#" class="level4">illustration</a> <a href="#" class="level4">design</a> <a href="#" class="level3">best of the week</a> <a href="#" class="level3">iphone</a> <a href="#" class="level3">Typography</a> <a href="#" class="level3">photoshop</a> <a href="#" class="level3">wallpaper</a> <a href="#" class="level2">architecture</a> <a href="#" class="level2">web design</a> <a href="#" class="level2">interview</a> <a href="#" class="level2">video</a> <a href="#" class="level2">free</a> <a href="#" class="level2">wallpaper of the week</a> <a href="#" class="level2">sites of the week</a> <a href="#" class="level2">graphic design</a> <a href="#" class="level2">freebie</a> <a href="#" class="level2">fonts</a> <a href="#" class="level2">case study</a> <a href="#" class="level2">logo</a> <a href="#" class="level2">giveaway</a> <a href="#" class="level2">art</a> <a href="#" class="level1">hdr</a> <a href="#" class="level1">digital art</a> <a href="#" class="level1">poster</a> <a href="#" class="level1">fireworks</a> <a href="#" class="level1">posters</a> <a href="#" class="level1">illustrator</a> <a href="#" class="level1">gadgets</a> <a href="#" class="level1">photo manipulation</a> <a href="#" class="level1">ads</a> <a href="#" class="level1">logo design</a> <a href="#" class="level1">FFFF</a> <a href="#" class="level1">3d</a> <a href="#" class="level1">video of the week</a> <a href="#" class="level1">offices</a> <a href="#" class="level1">product design</a> </div>
              </div>
              <div class="clear"></div>
            </div>
            <div id="credits">
              <div class="leftalign">Copyright &copy; 2010 YourSiteName.com</div>
              <div class="rightalign"><a href="http://all-free-download.com/free-website-templates/">Free CSS Templates</a> by <a href="http://cssheaven.org">CSSHeaven.org</a></div>
            </div>
          </div>
        </div>
        <!-- END PAGE SOURCE -->
        <div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div>
    </div>
    </form>
</body>
</html>
