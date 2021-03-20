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


	
	String product_name = request.getParameter("product_name");
	
	String product_desc = request.getParameter("product_description");
	
	String price = request.getParameter("price");
	
	double cost = Double.parseDouble(price);
	
	String img = request.getParameter("myimg");
	
	String path = "C:\\Users\\HP\\Desktop\\SPORTKING\\images\\";
	File imagefile=new File(path+img);
	FileInputStream fis=new FileInputStream(imagefile);

	
		
	
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
	PreparedStatement pstmt = con.prepareStatement("insert into products(product_desc,price,image,product_name) values(?,?,?,?)");
	pstmt.setString(1,product_desc);
	pstmt.setDouble(2,cost);
	pstmt.setBinaryStream(3, (InputStream)fis, (int)(imagefile.length()));
	pstmt.setString(4,product_name);
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