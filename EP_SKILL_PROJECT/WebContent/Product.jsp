<%@ page import ="java.sql.*,java.util.*,java.io.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<%

try
{


	
	String product_name = request.getParameter("product_name");
	
	String product_desc = request.getParameter("product_description");
	
	String price = request.getParameter("price");
	
	double cost = Double.parseDouble(price);
	
	String img = request.getParameter("myimg");
	
	
	String category = request.getParameter("product_category");
	String path = "C:\\Users\\HP\\Desktop\\SPORTKING\\images\\";
	File imagefile=new File(path+img);
	FileInputStream fis=new FileInputStream(imagefile);

	
		
	
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
	PreparedStatement pstmt = con.prepareStatement("insert into products(product_desc,price,image,product_name,category) values(?,?,?,?,?)");
	pstmt.setString(1,product_desc);
	pstmt.setDouble(2,cost);
	pstmt.setBinaryStream(3, (InputStream)fis, (int)(imagefile.length()));
	pstmt.setString(4,product_name);
	pstmt.setString(5,category);
	int n = pstmt.executeUpdate();
	
	if (n>0)
	{
		out.println("Product Added");
	}
	else
	{
		out.println("Product Not Added Successfully");
	}
	
}

catch(Exception e)
{
	
	System.out.println(e);
	
}


%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>
<link rel="stylesheet" href="css/normalize.css">
<link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/main.css">
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

<style>
*, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  font-family: 'Nunito', sans-serif;
  color: #384047;
}

form {
  max-width: 300px;
  margin: 10px auto;
  padding: 10px 20px;
  background: #f4f7f8;
  border-radius: 8px;
}

h1 {
  margin: 0 0 30px 0;
  text-align: center;
}

input[type="text"],
input[type="password"],
input[type="date"],
input[type="datetime"],
input[type="email"],
input[type="number"],
input[type="search"],
input[type="tel"],
input[type="time"],
input[type="url"],
textarea,
select {
  background: rgba(255,255,255,0.1);
  border: none;
  font-size: 16px;
  height: auto;
  margin: 0;
  outline: 0;
  padding: 15px;
  width: 100%;
  background-color: #e8eeef;
  color: #8a97a0;
  box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
  margin-bottom: 30px;
}



button {
  padding: 19px 39px 18px 39px;
  color: #FFF;
  background-color: #4bc970;
  font-size: 18px;
  text-align: center;
  font-style: normal;
  border-radius: 5px;
  width: 100%;
  border: 1px solid #3ac162;
  border-width: 1px 1px 3px;
  box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
  margin-bottom: 10px;
}

fieldset {
  margin-bottom: 30px;
  border: none;
}

legend {
  font-size: 1.4em;
  margin-bottom: 10px;
}

label {
  display: block;
  margin-bottom: 8px;
}

label.light {
  font-weight: 300;
  display: inline;
}

.number {
  background-color: #5fcf80;
  color: #fff;
  height: 30px;
  width: 30px;
  display: inline-block;
  font-size: 0.8em;
  margin-right: 4px;
  line-height: 30px;
  text-align: center;
  text-shadow: 0 1px 0 rgba(255,255,255,0.2);
  border-radius: 100%;
}

@media screen and (min-width: 480px) {

  form {
    max-width: 480px;
  }

}

</style>



</head>
<body class="host_version"> 


    
	
	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="index.html">
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
							<a class="nav-link dropdown-toggle" href="features.html" id="dropdown-a" data-toggle="dropdown">Products</a>
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

	
	

 <form action="Product.jsp" method="post">
      
        <h1>Product Addition</h1>
        
        <fieldset>
          <legend><span class="number">1</span>Admin Panel</legend>
          <label for="name">Enter Product Name</label>
          <input type="text" name="product_name">
          
          <label for="mail">Enter Product Description</label>
          <input type="text" name="product_description">
          
          <label for="name">Enter Product Category</label>
          <input type="text" name="product_category">
          
          <label>Enter Price</label>
          <input type="text" name="price"><br><br>
          <label>Enter File</label>
          <input type="file" name="myimg">
        </fieldset>
        <button  type="submit">Add</button>
      </form>


  
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>About US</h3>
                        </div>
                        <p>SPORTSKING is the one only destination for you to shop all your sports requirements at a single go. You get to choose different range of sport goods related to each and every sport. We provide with all the goods that are related to a particular sport. Thus, enables you to shop goods for your favourite sport with ease. SPORTSKING has a mega monthly sale where you can save up on your budget (Terms and Conditions apply). We also provide you with all the details of the product so that you don???t have to juggle your mind. SPORTSKING offers you with one of the fastest deliveries of its kind. We rely only on customer satisfaction which makes us the most trusted online sports store in the country!</p>
                        
                    </div><!-- end clearfix -->
                </div><!-- end col -->

				<div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Information Link</h3>
                        </div>
                        <ul class="footer-links">
                            <li><a href="./index.html">Home</a></li>
							<li><a href="./about.html">About</a></li>
							
							<li><a href="./contact.html">Contact</a></li>
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
    </footer>

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
	<script src="js/timeline.min.js"></script>
	<script>
		timeline(document.querySelectorAll('.timeline'), {
			forceVerticalMode: 700,
			mode: 'horizontal',
			verticalStartPosition: 'left',
			visibleItems: 4
		});
	</script>
</body>
</html>



