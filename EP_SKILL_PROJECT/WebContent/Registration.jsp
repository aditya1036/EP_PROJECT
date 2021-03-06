<%@ page import="java.sql.* , java.util.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%

try
{
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	long mob = Long.parseLong(mobile);
	String password = request.getParameter("password");
	
	

	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
	PreparedStatement pstmt = con.prepareStatement("insert into registration(name,email,mobile,password) values(?,?,?,?)");
	pstmt.setString(1,name);
	pstmt.setString(2,email);
	pstmt.setLong(3, mob);
	pstmt.setString(4,password);
	
	 int n = pstmt.executeUpdate();
	
	 if(n>0)
	 {
		response.sendRedirect("index.html"); 
		 System.out.println("Record inserted");
	 }
	
	
}

catch(Exception e)
{
	System.out.println(e);
	
	
}



%>