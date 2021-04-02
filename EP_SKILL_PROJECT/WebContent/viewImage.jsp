<%@ page  import="java.sql.* , java.io.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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

Blob image = null;
byte[ ] imgData = null ;


String id = (String)request.getParameter("id");

int id1 = Integer.parseInt(id);


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
PreparedStatement pstmt = con.prepareStatement("select * from products where productid=?");

pstmt.setInt(1,id1);


ResultSet rs = pstmt.executeQuery();

while(rs.next())
{
	
	image = rs.getBlob(4);
	imgData = image.getBytes(1,(int)image.length());	
	response.setContentType("image/jpg");
	OutputStream o = response.getOutputStream();
	o.write(imgData);
	o.flush();
	o.close();

}

%>