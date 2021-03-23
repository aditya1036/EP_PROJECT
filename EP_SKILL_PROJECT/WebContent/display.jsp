<%@ page import="java.sql.*,java.util.*,java.io.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

try
{
	
	Blob image = null;
	byte[ ] imgData = null ;
	Statement stmt = null;

	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
	PreparedStatement pstmt = con.prepareStatement("select * from products");
	

	
	ResultSet rs = pstmt.executeQuery();
	
	while (rs.next()) 
	{
	image = rs.getBlob(4);
	imgData = image.getBytes(1,(int)image.length());
	} 
	
	response.setContentType("image/gif");
	OutputStream o = response.getOutputStream();
	%>
	<h1>New Arrivals</h1>
	<%
	o.write(imgData);
	o.flush();
	o.close();
	} 
	catch (Exception e) 
	{
	out.println("Unable To Display image");
	out.println("Image Display Error=" + e.getMessage());
	return;
	} 
	
	
	







%>