<%@ page import="java.sql.* , java.util.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%

try
{

	String email = request.getParameter("email1");
	String password = request.getParameter("pwd");
	
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
	PreparedStatement pstmt = con.prepareStatement("select * from registration where email=? and password=? ");

	pstmt.setString(1,email);

	pstmt.setString(2,password);
	
	 ResultSet rs = pstmt.executeQuery();
	
	 if(rs.next())
	 {
	
		session.setAttribute("name",rs.getString(2));
		session.setAttribute("email",rs.getString(3));
		session.setMaxInactiveInterval(20);
		response.sendRedirect("index.jsp"); 
	 }
	 
	 else
	 {
		 response.sendError(400,"Invalid Login");
	 }
	
	
}

catch(Exception e)
{
	System.out.println(e);
	
	
}



%>