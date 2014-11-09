<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<%@ include file="FilterForm.jsp" %>
<%
String sql = "select * from Laptops";
ResultSet resultSet = stmt.executeQuery(sql);
%>

<table border="1" cellpadding=3>
<%while(resultSet.next()){ %>
<tr>
	<%int laptop_id = resultSet.getInt(1); %>
  	<td> <%= laptop_id %></td>
  	<%String imgSource = resultSet.getString(31);%>
	<td> <a href="laptop.jsp?prodID=<%=laptop_id%>"><img src="<%=imgSource%>" alt=<%=laptop_id%>></a> </td>
</tr>
<% } %>        
</table>
<%
// close database connections
stmt.close();
con.close();
%>
</body>
</html>
