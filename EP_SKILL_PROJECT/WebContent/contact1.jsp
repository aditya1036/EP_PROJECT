<%@page import="java.sql.*" %>
<%


String name = (String)session.getAttribute("name");
String email = (String)session.getAttribute("email");
if(name==null || email==null)
{
	response.sendRedirect("index.jsp");
}


%>
<!DOCTYPE html>
<html lang="en">

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>SPORTSKING</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

  
    <script src="js/modernizer.js"></script>


</head>
<body class="host_version"> 

	


	

    <!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="index.jsp">
                    <img src="images/logo-hosting1.png" alt="" height="60px" width="100px"/>
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-host" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
					<span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-host">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="about.jsp">About Us</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Products </a>
								<%
							

						    Class.forName("com.mysql.jdbc.Driver");
						    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
						    
						    PreparedStatement pstmt = con.prepareStatement("select distinct category from products");
						    
						    
						    ResultSet rs = pstmt.executeQuery(); 
							
							%>
							
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
							<%
							 while(rs.next())
							    {
							 
							
							%>
								<a class="dropdown-item" href="Search.jsp"><%=rs.getString(1)%></a>
								
								<%
								
								}
								
								%>
							</div>
						</li>
						<li class="nav-item active"><a class="nav-link" href="contact1.jsp">Contact</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
                        <li><a class="hover-btn-new log" href="Logout.jsp" ><span>Logout</span></a></li>
                    </ul>
					
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->
	<%=name%>
	 <%=email %>


	
    <div id="support" class="section wb">
        <div class="container-fulid">
            <div class="section-title text-center">
                <h3>Need Help? Sure we are Online!</h3>
                <p class="lead">Let us give you more details about the special offer website you want us. Please fill out the form below. <br>We have million of website owners who happy to work with us!</p>
            </div><!-- end title -->


            <div class="row">
                <div class="col-sm-12">
                    <div class="contact_form">
                        <div id="message"></div>
                        <form id="contactform"  name="contactform" action="Contact.jsp" method="post">
                            <fieldset class="row row-fluid">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" name="first_name" class="form-control" placeholder="First Name" required>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" name="last_name"  class="form-control" placeholder="Last Name" required>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <input type="email" name="email"  class="form-control" placeholder="Your Email" required>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" name="phone"  class="form-control" placeholder="Your Phone" required>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <textarea class="form-control" name="comments" rows="6" placeholder="Give us more details.." required></textarea>
                                </div>
                                <div class="text-center pd">
                                    <input type="submit"  name="submit" class="btn btn-light btn-radius btn-brd grd1 btn-block">
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div><!-- end col -->
        
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
        </div><!-- end container -->
    </div><!-- end section -->
	




    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                           <h3>About US</h3>
                        </div>
                        <p>SPORTSKING is the one only destination for you to shop all your sports requirements at a single go. You get to choose different range of sport goods related to each and every sport. We provide with all the goods that are related to a particular sport. Thus, enables you to shop goods for your favourite sport with ease. SPORTSKING has a mega monthly sale where you can save up on your budget (Terms and Conditions apply). We also provide you with all the details of the product so that you don’t have to juggle your mind. SPORTSKING offers you with one of the fastest deliveries of its kind. We rely only on customer satisfaction which makes us the most trusted online sports store in the country!</p>
                        
                    </div><!-- end clearfix -->
                </div><!-- end col -->

				<div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Information Link</h3>
                        </div>
                        <ul class="footer-links">
                    <li><a href="index.jsp">Home</a></li>
							<li><a href="about.jsp">About</a></li>
							
							<li><a href="contact1.jsp">Contact</a></li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
				
                <div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Contact Details</h3>
                        </div>

                        <ul class="footer-links">
                            <li><a href="mailto:#">sportking6@gmail.com</a></li>
                            <li>1-2-3, MG Road, Vijayawada, AP-520008, India.</li>
                            <li>+91 8007006001</li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
				
            </div><!-- end row -->
        </div><!-- end container -->
    </footer><!-- end footer -->

    <div class="copyrights">
        <div class="container">
            <div class="footer-distributed">
            

                <div class="footer-right">
                    <ul class="footer-links-soi">
						<li><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
						<li><a href="https://mail.google.com/"><i class="fa fa-google"></i></a></li>
						<li><a href="https://twitter.com/LOGIN"><i class="fa fa-twitter"></i></a></li>
					</ul><!-- end links -->
                </div>
            </div>
        </div><!-- end container -->
    </div><!-- end copyrights -->

   

    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
	<!-- Mapsed JavaScript -->
	<script src="js/mapsed.js"></script>
	<script src="js/01-custom-places-example.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>

</body>
</html>