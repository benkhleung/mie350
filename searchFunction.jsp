<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Function</title>
</head>
<body>
<%@ include file="menu.jsp" %>

<% String search = request.getParameter("search"); %>

<!-- copying some of the code from laptop.jsp -->

<%
String sql = "select * from Laptops where Brand ="+ search;
ResultSet resultSet = stmt.executeQuery(sql);
String message ="";

if(resultSet.next()==false){
	message = "terrible search term</br>";
}

else{
while(resultSet.next())
{
	%>
	<table>
	   <tr>
	   <%int laptop_id = resultSet.getInt(1); %>
	   <td><p><%=resultSet.getString(3)%></p></td></tr>
	   <%String imgSource = resultSet.getString(31);%>
	   <tr><td> <img src="<%=imgSource%>" alt=<%=laptop_id%>></td></tr>
	</table>
	<%
}
}
%>

<p> <%= message %></p>

<%
// close database connections
stmt.close();
con.close();
%>
</body>
</html>
