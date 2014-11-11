<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"
import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
//Database connection
String url = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=W:\\workspace\\webapptrial\\Database\\Database.accdb";
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection(url); 
Statement stmt = con.createStatement(); 
%>
<body>
<p>
<a href="index.jsp">Home</a> |
<a href="products.jsp">Products</a> |
<a href="compare.jsp">Compare</a> |
<a href="aboutUs.jsp">About Us</a>
<br /><br /> 
</p>
</body>
</html>
