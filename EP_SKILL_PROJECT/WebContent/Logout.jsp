<%@ page import="java.util.* , java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
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

session.invalidate();
session.setMaxInactiveInterval(10);
request.getRequestDispatcher("index.jsp").forward(request, response);

%>