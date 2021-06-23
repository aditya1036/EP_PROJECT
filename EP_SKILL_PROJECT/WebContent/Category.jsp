<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
    
    PreparedStatement pstmt = con.prepareStatement("select * from products");
    
    
    ResultSet rs = pstmt.executeQuery();
    
    while(rs.next())
    {
    	
    	System.out.println(rs.getString(6));
    }
    
    
    
    %>
    
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>