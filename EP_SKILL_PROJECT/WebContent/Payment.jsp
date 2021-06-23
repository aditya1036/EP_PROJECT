<%@page import="java.sql.*" %>

<%


String name = (String)session.getAttribute("name");
String email = (String)session.getAttribute("email");
if(name==null || email==null)
{
	response.sendRedirect("index.html");
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
    
    <script src="https://www.paypal.com/sdk/js?client-id=test"></script>

<script>
  paypal.Buttons({
    style: {
      size: 'responsive',
    }
  }).render('#paypal-button-container');
</script>
    
<style>
.card {
  /* Add shadows to create the "card" effect */
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  height: 250px;
  width: 650px;
  align: center;
  margin-left: 400px
}

/* On mouse-over, add a deeper shadow */
.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

/* Add some padding inside the card container */
.container {
  padding: 2px 16px;
}


</style>


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
	 <%=name%>
	 <%=email %>
	
	
	
	<h1 align="center">Payment To Be Done!!!!</h1>
	
	<div >
	<div id="paypal-button-container" class="card"></div>
	</div>

	

  


    


 


    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
	<script src="js/timeline.min.js"></script>

	
</body>
</html>