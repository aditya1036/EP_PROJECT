
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
    <title>SPORTKING</title>  
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">    <!-- Modernizer for Portfolio -->
    <script src="js/modernizer.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

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
				</button>
				<div class="collapse navbar-collapse" id="navbars-host">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="about.jsp">About Us</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Products</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="features.jsp">Shoes </a>
								<a class="dropdown-item" href="features1.jsp">Bags</a>
								<a class="dropdown-item" href="features3.jsp">Sports Wear</a>
								<a class="dropdown-item" href="#">Sports Accessories</a>
								<a class="dropdown-item" href="#">Fitness</a>
							</div>
						</li>
						
						<li class="nav-item"><a class="nav-link" href="contact1.jsp">Contact</a></li>
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

    
       
        
    <div id="overviews" class="section lb">
        <div class="container">
            <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3>PRODUCTS</h3>
                    <p>Looking for a good trendy sport shoes that matches your sports wear? Or want some fitness essentials to make your fitness journey blissful? You are at the right place!
We offer you with wide range of sports goods at a cheaper rate than your local store!
You can complete your A-Z sports shopping with us hassle free, We ensure that our products are genuine and we deliver your order within 3 days of the purchase.</p>
                </div>
            </div><!-- end title -->
    <% 
            try{
            if(name.equalsIgnoreCase("Aditya Khandelwal") && email.equalsIgnoreCase("adityakhandelwal0033@gmail.com"))
            {
            %>
            <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3>ADD PRODUCTS</h3>
                    <a href="Product.jsp">Add Products</a>
                </div>
            </div>
            <%
            }
            }
            catch(Exception e){
            	
            System.out.println("Exception Occured");	
            }
            %>
            <hr class="invis"> 

            <div class="row">
                <div class="col-md-12">
                    <div class="tab-content">
                        <div class="tab-pane active fade show" id="tab1">
                            <div class="row text-center">
                                <div class="col-md-4 ">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Adidas Bag</h2>
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <img src="images\bags\abags.jpg" height="230px" width="250px">
                                           <p><i class="fa fa-envelope-o"></i> <strong>Rs:3600</strong>UNISEX ADIDAS TRAINING PARKHOOD 0.2 BPL BACKPACK</p>
                                            <p><i class="fa fa-rocket"></i> <strong>15 LITRES</strong></p>
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="Payment.jsp" class="hover-btn-new"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Nike</h2>
                                            
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <img src="images\bags\abags2.jpg" height="230px" width="250px">
                                       <p><i class="fa fa-envelope-o"></i> <strong>Rs:3600</strong>UNISEX ADIDAS TRAINING PARKHOOD 0.2 BPL BACKPACK</p>
                                            <p><i class="fa fa-rocket"></i> <strong>15 LITRES</strong></p>
                                           
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="Payment.jsp" class="hover-btn-new"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Nike</h2>
                                            
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <img src="images\bags\mnikebags2.jpg" height="230px" width="250px">
                                            <p><i class="fa fa-envelope-o"></i> <strong>Rs:3600</strong>UNISEX ADIDAS TRAINING PARKHOOD 0.2 BPL BACKPACK</p>
                                            <p><i class="fa fa-rocket"></i> <strong>15 LITRES</strong></p>
                                            
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="Payment.jsp" class="hover-btn-new"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                               

                            </div><!-- end row -->
                        </div><!-- end pane -->
                        <hr class="hr3">
                        <div class="tab-pane active fade show" id="tab1">
                            <div class="row text-center">
                                <div class="col-md-4 ">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Nike</h2>
                                           
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <img src="images\bags\mnikebags3.jpg" height="230px" width="250px">
                                     <p><i class="fa fa-envelope-o"></i> <strong>Rs:3600</strong>UNISEX ADIDAS TRAINING PARKHOOD 0.2 BPL BACKPACK</p>
                                            <p><i class="fa fa-rocket"></i> <strong>15 LITRES</strong></p>
                                            
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="Payment.jsp" class="hover-btn-new"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Nike</h2>
                                            
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <img src="images\bags\mnikebags5.jpg" height="230px" width="250px">
                                         <p><i class="fa fa-envelope-o"></i> <strong>Rs:3600</strong>UNISEX ADIDAS TRAINING PARKHOOD 0.2 BPL BACKPACK</p>
                                            <p><i class="fa fa-rocket"></i> <strong>15 LITRES</strong></p>
                                            
                                            
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="Payment.jsp" class="hover-btn-new"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Nike</h2>
                                           
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <img src="images\bags\mpumabag2.jpg" height="230px" width="250px">
                                         <p><i class="fa fa-envelope-o"></i> <strong>Rs:3600</strong>UNISEX ADIDAS TRAINING PARKHOOD 0.2 BPL BACKPACK</p>
                                            <p><i class="fa fa-rocket"></i> <strong>15 LITRES</strong></p>
                                            
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="Payment.jsp" class="hover-btn-new"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                               

                            </div><!-- end row -->
                        </div><!-- end pane -->
                        <hr class="hr3">
                        <div class="tab-pane active fade show" id="tab1">
                            <div class="row text-center">
                                <div class="col-md-4 ">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Nike</h2>
                                            
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <img src="images\bags\mpumabag3.jpg" height="230px" width="250px">
                                         <p><i class="fa fa-envelope-o"></i> <strong>Rs:3600</strong>UNISEX ADIDAS TRAINING PARKHOOD 0.2 BPL BACKPACK</p>
                                            <p><i class="fa fa-rocket"></i> <strong>15 LITRES</strong></p>
                                            

                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="Payment.jsp" class="hover-btn-new"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Nike</h2>
                                           
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <img src="images\bags\mpumabag6.jpg" height="230px" width="250px">
                                         <p><i class="fa fa-envelope-o"></i> <strong>Rs:3600</strong>UNISEX ADIDAS TRAINING PARKHOOD 0.2 BPL BACKPACK</p>
                                            <p><i class="fa fa-rocket"></i> <strong>15 LITRES</strong></p>
                                            
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="Payment.jsp" class="hover-btn-new"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Nike</h2>
                                            
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <img src="images\bags\mreebokbag2.jpg" height="230px" width="250px">
                                         <p><i class="fa fa-envelope-o"></i> <strong>Rs:3600</strong>UNISEX ADIDAS TRAINING PARKHOOD 0.2 BPL BACKPACK</p>
                                            <p><i class="fa fa-rocket"></i> <strong>15 LITRES</strong></p>
                                            
                                          
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="Payment.jsp" class="hover-btn-new"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                               

                            </div><!-- end row -->
                        </div><!-- end pane -->
                        <hr class="hr3">
                        <div class="tab-pane active fade show" id="tab1">
                            <div class="row text-center">
                                <div class="col-md-4 ">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Nike</h2>
                                           
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <img src="images\bags\mreebokbag6.jpg" height="230px" width="250px">
                                         <p><i class="fa fa-envelope-o"></i> <strong>Rs:3600</strong>UNISEX ADIDAS TRAINING PARKHOOD 0.2 BPL BACKPACK</p>
                                            <p><i class="fa fa-rocket"></i> <strong>15 LITRES</strong></p>
                                            
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="Payment.jsp" class="hover-btn-new"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Nike</h2>
                                         
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <img src="images\bags\mvansbag4.jpg" height="230px" width="250px">
                                         <p><i class="fa fa-envelope-o"></i> <strong>Rs:3600</strong>UNISEX ADIDAS TRAINING PARKHOOD 0.2 BPL BACKPACK</p>
                                            <p><i class="fa fa-rocket"></i> <strong>15 LITRES</strong></p>
                                            
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="Payment.jsp" class="hover-btn-new"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Nike</h2>
                                         
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <img src="images\bags\rbags8.jpg" height="230px" width="250px">
                                         <p><i class="fa fa-envelope-o"></i> <strong>Rs:3600</strong>UNISEX ADIDAS TRAINING PARKHOOD 0.2 BPL BACKPACK</p>
                                            <p><i class="fa fa-rocket"></i> <strong>15 LITRES</strong></p>
                                            
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="Payment.jsp" class="hover-btn-new"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                               

                            </div><!-- end row -->
                        </div><!-- end pane -->
                        <hr class="hr3">
                        <div class="tab-pane active fade show" id="tab1">
                            <div class="row text-center">
                                <div class="col-md-4 ">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Nike</h2>
                                            
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <img src="images\bags\rbags9.jpg" height="230px" width="250px">
                                         <p><i class="fa fa-envelope-o"></i> <strong>Rs:3600</strong>UNISEX ADIDAS TRAINING PARKHOOD 0.2 BPL BACKPACK</p>
                                            <p><i class="fa fa-rocket"></i> <strong>15 LITRES</strong></p>
                                            
                                            
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="Payment.jsp" class="hover-btn-new"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Nike</h2>
                                         
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <img src="images\bags\rbags11.jpg" height="230px" width="250px">
                                         <p><i class="fa fa-envelope-o"></i> <strong>Rs:3600</strong>UNISEX ADIDAS TRAINING PARKHOOD 0.2 BPL BACKPACK</p>
                                            <p><i class="fa fa-rocket"></i> <strong>15 LITRES</strong></p>
                                            
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="Payment.jsp" class="hover-btn-new"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Nike</h2>
                                     
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <img src="images\bags\rbags12.jpg" height="230px" width="250px">
                                         <p><i class="fa fa-envelope-o"></i> <strong>Rs:3600</strong>UNISEX ADIDAS TRAINING PARKHOOD 0.2 BPL BACKPACK</p>
                                            <p><i class="fa fa-rocket"></i> <strong>15 LITRES</strong></p>
                                            
                                          
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="Payment.jsp" class="hover-btn-new"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>

                        
                        </div>
                    </div>
                    
                </div>
            </div>
            
            
            
            <hr class="hr3"> 
            


              
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->



    
    <div class="parallax section dbcolor">
        <div class="container">
            <div class="row logos">
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_01.png"width="460px" height="113px" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_02.png"width="460px" height="113px" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_03.png" width="460px" height="113px"alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_04.png" width="460px" height="113px"alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_05.png"width="460px" height="113px" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_06.png" width="460px" height="113px"alt="" class="img-repsonsive"></a>
                </div>
            </div><!-- end row -->
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
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>

</body>
</html>