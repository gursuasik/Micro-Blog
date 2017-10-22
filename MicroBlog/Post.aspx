<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="MicroBlog.WebForm2" %>

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
                  <h2><span>Hello World</span></h2>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam blandit facilisis viverra. Nullam id tristique arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vehicula eros commodo est vestibulum cursus..<span class="readmore"> <a href="#">read more</a></span></p>
                </div>
                <div class="clear"></div>
              </div>
            </div>
            <div id="content">
              <div id="left">
                <div class="post">
                  <div class="postleft">
                    <div class="postdate"> <span class="day"> 30 </span> <span class="month">January</span> </div>
                    <div class="comments"> <span class="count"><a href="#">0</a></span> </div>
                  </div>
                  <div class="postcontent">
                    <div class="postheader">
                      <h2>How everything look like</h2>
                      <span class="postmeta">By Roshan | Filed under CSS Templates</span> </div>
                    <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempus egestas eros id sodales. Donec consectetur, mi sed consequat fermentum, nisl ipsum auctor dolor, vel fringilla orci neque et turpis. Suspendisse potenti. Curabitur consequat dolor tellus, eget vestibulum augue. </p>
                    <h3>Blockquote</h3>
                    <p>Vivamus pellentesque tempus tellus, in viverra magna luctus a. Maecenas ornare, nunc vitae blandit pretium, nisl dui consectetur nibh, eget porttitor velit dui vel mauris.</p>
                    <blockquote>
                      <p> Donec pulvinar ligula sit amet sem commodo auctor. Nulla iaculis dignissim vulputate. Ut eget ligula purus, facilisis accumsan tellus. Nulla facilisis porttitor venenatis. <cite>BlockQuote Example</cite> </p>
                    </blockquote>
                    <p>Praesent ut porttitor est. Cras nec ipsum sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                    <h3>Image in a post</h3>
                    <p>Donec aliquet justo quis nibh suscipit rhoncus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>
                    <img src="images/featuredimage.jpg" width="200" height="135" alt="" />
                    <p>Praesent velit odio, interdum ut feugiat vehicula, consectetur sed arcu. Vivamus euismod convallis sapien a condimentum. In vehicula vestibulum odio ac pulvinar. Curabitur at ipsum quis est lobortis consectetur a in urna. </p>
                    <h4>Foated Images</h4>
                    <img src="images/featuredimage.jpg" width="200" height="135" alt="" class="leftalign" />
                    <p> Aliquam interdum consectetur nulla a posuere. Vestibulum gravida pulvinar tortor, id ullamcorper mi iaculis in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In gravida magna ac felis adipiscing congue. Nullam non purus justo. Sed ac mauris mauris, a ultricies tellus. Praesent in dolor sit amet leo pulvinar posuere at at nisi. Curabitur malesuada molestie euismod. Sed pellentesque dolor scelerisque magna rhoncus ornare. Proin id quam tortor. Praesent eu ante sed lorem pharetra condimentum. Pellentesque rutrum tortor eget enim mattis euismod. Nam scelerisque erat id sapien vulputate aliquet sed ac diam. Cras vestibulum quam a sapien luctus non sodales ipsum semper. Sed sed tortor neque, eget euismod odio. </p>
                    <img src="images/featuredimage.jpg" width="200" height="135" alt="" class="rightalign" />
                    <p> Sed eu tellus ante, pellentesque hendrerit magna. Duis non dui in leo malesuada dignissim. </p>
                    <ul>
                      <li>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </li>
                      <li>Pellentesque urna erat, commodo semper posuere eu, commodo a nisl. Nullam vehicula ultrices libero, a viverra magna congue in. </li>
                      <li>Suspendisse eleifend est ut purus varius porta commodo sem facilisis. Nullam sed consequat turpis. </li>
                      <li>Aliquam nec faucibus risus. Cras ipsum tortor, auctor ut rhoncus commodo, euismod vel nibh. </li>
                    </ul>
                    <ol>
                      <li>Nulla consectetur placerat mi id faucibus. </li>
                      <li>Ut sed nulla est.</li>
                      <li> Fusce id orci sit amet elit mattis pharetra nec quis felis. </li>
                      <li>Proin aliquet aliquet tempor. </li>
                    </ol>
                    <p>Curabitur at felis in velit placerat egestas vitae a erat. Integer congue sollicitudin metus, ut egestas elit porttitor in. Nunc sit amet vulputate tellus. Ut vel libero fermentum mauris tempus imperdiet nec vel ante. Nulla facilisi. Phasellus elementum adipiscing sapien eget dapibus. Morbi rhoncus lobortis lacus eu egestas. Duis non tellus velit, nec accumsan nulla. Vestibulum quam urna, mattis viverra semper at, pellentesque eu arcu. In condimentum mauris augue. Pellentesque vitae sem ac ipsum congue accumsan. Nunc sapien purus, pharetra vel sagittis sit amet, condimentum ac metus. </p>
                    <div id="comments" class="comments-list">
                      <h2>2 Responses to &quot;Story of Lorem Ipsum&quot;</h2>
                      <div class="entry  alt">
                        <p class="avt"><img src="images/avatar.jpg" alt="" width="45" height="45" /></p>
                        <p class="name">Roshan</p>
                        <p class="date"><a href="#">July 12th, 2009 at 10:25 am</a> </p>
                        <div class="con">
                          <p>Mea eu volumus offendit, pro ei ferri ipsum saperet. Ea vocent splendide mea, minim doctus et has. Mel duis epicuri omnesque at, mea cu ferri scripta. Causae facilisi tincidunt eu eam, munere atomorum repudiandae at eum.</p>
                          <p>Mel duis epicuri omnesque at, mea cu ferri scripta. Causae facilisi tincidunt eu eam, munere atomorum repudiandae at eum.</p>
                        </div>
                      </div>
                      <div class="entry " id="comment-4">
                        <p class="avt"><img src="images/avatar.jpg" alt="" /></p>
                        <p class="name">admin</p>
                        <p class="date"><a href="#">July 19th, 2007 at 10:32 am</a> </p>
                        <div class="con">
                          <p>Mei in saepe persius feugiat, postulant honestatis cu his, duo ea indoctum moderatius. Ut duo modo definiebas posidonium. Causae mentitum percipitur cum eu, usu dolor regione oporteat no. At iusto dolores electram eos, everti intellegat consectetuer eos id. Eum ut vero veniam verterem.</p>
                        </div>
                      </div>
                    </div>
                    <div class="comments-form">
                      <h3 id="respond">Add A Comment</h3>
                      <form id="comment-form" action="#" method="post">
                        <p>
                          <input id="comment-name" value="" name="author"  type="text" class="formid" />
                          <label for="comment-name">Your Name <strong class="required">(required)</strong></label>
                        </p>
                        <p>
                          <input id="comment-email" name="email" value="" type="text" class="formemail" />
                          <label for="comment-name">Your Email <strong class="required">(required)</strong></label>
                        </p>
                        <p>
                          <input id="comment-url" name="url" value="" type="text" class="formuri"/>
                          <label for="comment-name">Your URL</label>
                        </p>
                        <p>
                          <textarea name="comment" cols="50" rows="8"></textarea>
                        </p>
                        <p>
                          <input name="submit"  type="button" class="button" id="submit" tabindex="5" value="Submit" />
                        </p>
                      </form>
                    </div>
                  </div>
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
                  <h2><span>Categories</span></h2>
                  <div class="categories">
                    <ul>
                      <li><a href="#">Web Design</a></li>
                      <li><a href="#">CSS Templates</a></li>
                      <li><a href="#">Graphic Design</a></li>
                      <li><a href="#">Usability</a></li>
                      <li><a href="#">W3C Standards</a></li>
                    </ul>
                  </div>
                  <h2><span>Blogroll</span></h2>
                  <div class="links">
                    <ul>
                      <li><a href="#">CSS Templates</a></li>
                      <li><a href="#">Free CSS Templates</a></li>
                      <li><a href="#">PSD Templates</a></li>
                      <li><a href="#">Web Design Blog</a></li>
                      <li><a href="#">CSS Tutorials</a></li>
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
