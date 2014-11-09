<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Laptop</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<%
int laptop_id = Integer.parseInt(request.getParameter("prodID"));
//System.out.println(laptop_id);

//SQl STUFF TO PRINT INFO FOR LAPTOP WITH SAID ID
String sql = "select * from Laptops where ProductID="+laptop_id;
ResultSet resultSet = stmt.executeQuery(sql);
while(resultSet.next())
{
	%>
	<table>
	   <tr><td><p><%=resultSet.getString(3)%></p></td></tr>
	   <%String imgSource = resultSet.getString(31);%>
	   <tr><td> <img src="<%=imgSource%>" alt=<%=laptop_id%>></td></tr>
	</table>
	<%
}
%>

</body>
</html>
