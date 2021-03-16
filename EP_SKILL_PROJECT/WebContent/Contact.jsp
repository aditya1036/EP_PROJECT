<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
   trimDirectiveWhitespaces="true" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>

<%

String first_name = request.getParameter("first_name");
String last_name = request.getParameter("last_name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String comments = request.getParameter("comments");




Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
System.out.println("Connection Succeded");
PreparedStatement pstmt = con.prepareStatement("insert into query values(?,?,?,?,?)");

pstmt.setString(1,first_name);
pstmt.setString(2,last_name);
pstmt.setString(3,email);
pstmt.setString(4,phone);
pstmt.setString(5,comments);

int n = pstmt.executeUpdate();

if(n>0)
{
	out.println("Query Submitted");
	
}

else
{
	out.println("Query Not Submitted Successfully");
}

%>