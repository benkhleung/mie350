<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Results - Team Six Sigma Inc.</title>
</head>
<body>
<%@ include file="menu.jsp" %>


<!-- copying some of the code from laptop.jsp -->

<%
String search = request.getParameter("search");
String sql = "select * from Laptops where Brand =" + "'" +search + "'";
ResultSet resultSet = stmt.executeQuery(sql);
String message ="";
if(resultSet.next()==false){
	message = "No matches found! </br>";
}
else{
while(resultSet.next()) //replace code in while loop, so it doesn't only show picture and the laptop code
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

<%@ include file="footer.jsp" %>

</body>
</html>
