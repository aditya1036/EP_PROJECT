<%@ page import ="java.sql.*,java.util.*,java.io.*" language="java" contentType="text/html; charset=ISO-8859-1"
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

try
{
	
	
	
	


	/*
	String product_name = request.getParameter("product_name");
	
	String product_desc = request.getParameter("product_desc");
	
	String price = request.getParameter("price");
	
	double cost = Double.parseDouble(price);*/

	String lockimg = request.getParameter("myimg");
	System.out.print(lockimg);
	
	
	
	/*
	File file = new File("/EP_SKILL_PROJECT/WebContent/images"+lockimg);
	

	FileInputStream fis = new FileInputStream(file);
	
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
	
	System.out.println("Connection Done");
	
	PreparedStatement pstmt = con.prepareStatement("insert into products(product_desc,price,image,product_name) values(?,?,?,?)");
	pstmt.setString(1,product_desc);
	pstmt.setDouble(2,cost);
	pstmt.setBinaryStream(3,fis,(int)file.length());
	pstmt.setString(4,product_name);
	int n = pstmt.executeUpdate();
	
	if (n>0)
	{
		out.println("Prduct Added");
	}
	else
	{
		out.println("Product Not Added Successfully");
	}*/
	
}

catch(Exception e)
{
	
	System.out.println(e);
	
}








%>