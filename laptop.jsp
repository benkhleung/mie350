<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Laptop Specifications - Team Six Sigma Inc.</title>
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
	<table align="center" style="width:33%; padding:3px;">
	<%String imgSource = resultSet.getString(31);%>
	   <tr><td> <img align="middle" src="<%=imgSource%>" alt=<%=laptop_id%>></td></tr>
	</table>
	
	<table border="1" align="center" style="width:33%; padding:3px;">
	   <tr><td style="text-align:center;" colspan="2"><h3><%=resultSet.getString(2)%> <%=resultSet.getString(3)%></h3></td></tr> 
	   
	   <tr>
	   <th>Model Number: </th>
	   <td><p><%=resultSet.getString(4)%></p></td></tr>
	   	
	   <tr>
	   <th>Price: </th>
	   <td><p>$<%=resultSet.getString(6)%></p></td></tr>
	      
	   <tr>
	   <th>Color: </th>
	   <td><p><%=resultSet.getString(8)%></p></td></tr>
	   
	   <tr>
	   <th>Screen Size: </th>
	   <td><p><%=resultSet.getString(9)%></p></td></tr>
	   
	   <tr>
	   <th>Dimensions: (L x W x H)</th>
	   <td><p><%=resultSet.getString(10)%></p></td></tr>
	   
	   <tr>
	   <th>Weight: </th>
	   <td><p><%=resultSet.getString(11)%></p></td></tr>
	   
	   <tr>
	   <th>CPU: </th>
	   <td><p><%=resultSet.getString(13)%></p></td></tr>
	   
	   <tr>
	   <th>Operating System: </th>
	   <td><p><%=resultSet.getString(15)%></p></td></tr>
	   
	   <tr>
	   <th>Graphics: </th>
	   <td><p><%=resultSet.getString(16)%></p></td></tr>
	   
	   <tr>
	   <th>RAM: </th>
	   <td><p><%=resultSet.getString(18)%></p></td></tr>
	   
	   <tr>
	   <th>HDD: </th>
	   <td><p><%=resultSet.getString(19)%></p></td></tr>
	   
	   <tr>
	   <th>SSD: </th>
	   <td><p><%=resultSet.getString(20)%></p></td></tr>
	   
	   <tr>
	   <th>DVD Drive: </th>
	   <td><p><%=resultSet.getString(21)%></p></td></tr>
	   	 
	   <tr>
	   <th>Bluetooth: </th>
	   <td><p><%=resultSet.getString(22)%></p></td></tr>
	   
	   <tr>
	   <th>USB Ports: </th>
	   <td><p><%=resultSet.getString(23)%></p></td></tr>
	   
	   <tr>
	   <th>Battery Life: </th>
	   <td><p><%=resultSet.getString(25)%></p></td></tr>
	   	 
	   <tr>
	   <th>Warranty: </th>
	   <td><p><%=resultSet.getString(27)%></p></td></tr>
	   
	   <tr>
	   <th>Display Ports: </th>
	   <td><p><%=resultSet.getString(28)%></p></td></tr>
	   
	   <tr>
	   <th>Webcam: </th>
	   <td><p><%=resultSet.getString(29)%></p></td></tr>
	   
	   <tr>
	   <th>Backlit Keyboard: </th>
	   <td><p><%=resultSet.getString(30)%></p></td></tr>	 
	   
	</table>
	<%
}
%>

<br /><br />
<h2><strong>Ratings</strong></h2>
<br />

<%
String reviewsql = "select * from Reviews where ProductID=" + laptop_id;

int sumRating = 0;
int countRating = 0;
double avgRating = 0;

ResultSet resultSetReviews = stmt.executeQuery(reviewsql);

while(resultSetReviews.next())
{
	sumRating += Integer.parseInt(resultSetReviews.getString(2));
	countRating++;
}

if (countRating != 0)
	avgRating = (double)sumRating / countRating;
System.out.println(avgRating);
%>

<h4>Overall Average Rating: <%=avgRating %> </h4>
<h5>out of <%=countRating %> reviews</h5>

<form name="reviewForm" method="POST" action="thankYouForReview.jsp?prodID=<%=laptop_id%>">
<h3>Submit a review!</h3>
<table>
<tr>
<th colspan=5>Overall Rating</th>
</tr>
<tr>
<td align=center>1</td>
<td align=center>2</td>
<td align=center>3</td>
<td align=center>4</td>
<td align=center>5</td>
</tr>
<tr>
<td><label><input type="radio" name="rating" value="1"/></label></td>
<td><label><input type="radio" name="rating" value="2"/></label></td>
<td><label><input type="radio" name="rating" value="3"/></label></td>
<td><label><input type="radio" name="rating" value="4"/></label></td>
<td><label><input type="radio" name="rating" value="5"/></label></td>
</tr>
<tr>
<td align=center colspan=5><input type="submit" value="Submit"/></td>
</tr>
</table>
</form>

<%
// close database connections
stmt.close();
con.close();
%>


<%@ include file="footer.jsp" %>

</body>
</html>
