<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"
import = "java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Laptop List</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<%@ include file="filterForm.jsp" %>

	<% 
		boolean allProducts = true; //to see if user filters anything
		int filterCounter = 0; //to see if anything does get filtered
		String sql = "select * from Laptops"; //beginning of SQL query
				
		//arrays of the filtering categories used to edit the query
		String[] brands  = (String[])request.getParameterValues("brand");
		String[] screenSize = (String[])request.getParameterValues("screenSize");
		String[] price = (String[])request.getParameterValues("price");
		String[] processor = (String[])request.getParameterValues("processor");
		String[] operatingSys = (String[])request.getParameterValues("operatingSys");
		String[] ram = (String[])request.getParameterValues("ram");
		String[] hardDrive = (String[])request.getParameterValues("hardDrive");
		String[] ssd = (String[])request.getParameterValues("ssd");
		String[] weight = (String[])request.getParameterValues("weight");
		String[] graphics = (String[])request.getParameterValues("graphics");
		String[] batteryLife = (String[])request.getParameterValues("batteryLife");
		String[] category = (String[])request.getParameterValues("category");
		
		//if filtering process began at homepage
		String categoryType = (String)request.getParameter("categoryType");
		if(categoryType != null)
		{
			allProducts = false;
			sql = sql.concat(" where Category= '"+ categoryType + "'");
		}
		
		String[][] filterType = {brands, screenSize, price, processor, operatingSys, ram, hardDrive, ssd, weight, graphics, batteryLife, category};
		String[] filterTypeAttributes = {"Brand= ", "ScreenSize= ", "PriceRange= ", "CPUBrand= ", "OS= ", "RAM= ", "HDD= ", "SSD= ", "WeightRange= ", "GraphicsBrand= ", "BatterLifeRange= ", "Category= "};
		
		for(int j = 0; filterType.length > j; j++)
		{
			if(filterType[j] != null) {
				if(filterCounter > 0) {
					sql = sql.concat(" AND (");
				}
				else {
					sql = sql.concat(" where (");
				}
				allProducts = false;
				filterCounter++;
				for(int i = 0; i < filterType[j].length; i++) {
					sql = sql.concat(filterTypeAttributes[j]);
					sql = sql.concat("'" + filterType[j][i] + "'");
					if(filterType[j].length > 1 && filterType[j].length != (i+1)) {
						sql = sql.concat(" OR ");
					}
				}
				sql = sql.concat(")");
				System.out.println(sql);
		  	}
		}
		
		//if user wants to filter, execute said filter
		if(allProducts == false) {
			sql = sql.concat(";");
			System.out.println(sql);
			ResultSet resultSet = stmt.executeQuery(sql);
			boolean results = false;
			%>
			<table border="2" cellpadding="5" align="center">
			<%while(resultSet.next()) { %>
			<tr>
				<%results = true;
				int laptop_id = resultSet.getInt(1); %>
			  	<td> <%= laptop_id %></td>
			  	<%String imgSource = resultSet.getString(31);%>
				<td> <a href="laptop.jsp?prodID=<%=laptop_id%>"><img src="<%=imgSource%>" alt=<%=laptop_id%>></a> </td>
				<td> <p><label><input type="checkbox" name=<%=laptop_id%> value=<%=laptop_id%>/>Add to compareList</label></p> </td>
				<td><p>Brand: <%=resultSet.getString(2)%></p></td>   
	  			<td><p>Model: <%=resultSet.getString(3)%></p></td>	
	   			<td><p>Price: <%=resultSet.getString(6)%></p></td>
			</tr>
			<% } %>        
			</table> 
			<%
			if(!results) {
				%><br /><p><strong>SORRY THERE BE NO RESULTS FOR YOU D:</strong></p><%
			}
		}
		
		//if no filtering done by user, print all the laptops
		if(allProducts) {
			sql = "select * from Laptops";
			ResultSet resultSet = stmt.executeQuery(sql);	
		%>
			<form name="compare" action="compare.jsp" method="GET">
			<table border="2" cellpadding="5" align="center">
			<%while(resultSet.next()){ %>
			<tr>
				<%int laptop_id = resultSet.getInt(1); %>
			  	<td> <%= laptop_id %></td>
			  	<%String imgSource = resultSet.getString(31);%>
				<td> <a href="laptop.jsp?prodID=<%=laptop_id%>"><img src="<%=imgSource%>" alt=<%=laptop_id%>></a> </td>

				<td><label><input type="checkbox" name=<%=laptop_id%> <% if (session.getAttribute("laptop_id") != null)
 				out.print("checked"); %> value=<%=laptop_id%>/>Compare this laptop</label></td>
				
				<td><p>Brand: <%=resultSet.getString(2)%></p></td>   
	  			<td><p>Model: <%=resultSet.getString(3)%></p></td>	
	   			<td><p>Price: <%=resultSet.getString(6)%></p></td>
			</tr>
			<% } %>
			
			</table>
			<input type="submit" value="Compare Selected Laptops" name="Compare" />
			</form>
		<%}
	%>

<%
// close database connections
stmt.close();
con.close();
%>


<%@ include file="footer.jsp" %>

</body>
</html>
