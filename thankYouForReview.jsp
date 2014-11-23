<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Much thanks very rating wow</title>
</head>
<body>
<%@ include file="menu.jsp" %>
Thank you for your response :)
<% 
int laptop_id = Integer.parseInt(request.getParameter("prodID"));
String[] rating  = (String[])request.getParameterValues("rating");
System.out.println(rating[0]);
String sqlRating = "insert into Reviews values ("+laptop_id+","+Integer.parseInt(rating[0])+",'Hi');";
stmt.executeUpdate(sqlRating);
System.out.println(sqlRating);
%>
<br />
<a href="laptop.jsp?prodID=<%=laptop_id%>">Return to Laptop</a>



<%@ include file="footer.jsp" %>

</body>
</html>
