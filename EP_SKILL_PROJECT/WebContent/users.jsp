<%@page import="java.sql.*" %>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
PreparedStatement pstmt = con.prepareStatement("select * from registration ");


 ResultSet rs = pstmt.executeQuery();

 while(rs.next())
 {

out.println(rs.getString(2) + "       " +rs.getString(3) + "\n");
 }



%>
