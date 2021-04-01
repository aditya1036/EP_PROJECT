<%@ page  import="java.sql.* , java.io.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<%

String src_term = (String)request.getParameter("srch-term");

try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
	PreparedStatement pstmt = con.prepareStatement("select * from products where product_name like ? ");
	pstmt.setString(1,'%'+src_term+'%');
	
	ResultSet rs = pstmt.executeQuery();
	%>
	
	<table class="table">
  <tr>
  <th>Product_Id</th>
    <th>Product_Name</th>
    <th>Product_Description</th>
    <th>Product_Price</th>
     <th>Product_Image</th>

  </tr>
	
	<%
	while(rs.next())
	{
		%>
	
  <tr>
    <td><%=rs.getInt(1) %></td>
    <td><%=rs.getString(5) %></td>
    <td><%=rs.getString(2) %></td>
    <td><%=rs.getString(3) %></td>
  </tr>

<%
	
}
		
	%>
	
	</table>
	<%
	
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
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

</body>
</html>