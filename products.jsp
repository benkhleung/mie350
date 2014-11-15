<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"
import = "java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
	
		//filtering brands
		if(brands != null) {
			if(filterCounter > 0) {
				sql = sql.concat(" AND ");
			}
			else {
				sql = sql.concat(" where ");
			}
			allProducts = false;
			filterCounter++;
			for(int i = 0; i < brands.length; i++) {
				sql = sql.concat("Brand= ");
				sql = sql.concat("'" + brands[i] + "'");
				if(brands.length > 1 && brands.length != (i+1)) {
					sql = sql.concat(" OR ");
				}
			}
			System.out.println(sql);
	  	}
		
		//filtering screen size
		if(screenSize != null) {
			if(filterCounter > 0) {
				sql = sql.concat(" AND ");
			}
			else {
				sql = sql.concat(" where ");
			}
			allProducts = false;
			filterCounter++;
			for(int i = 0; i < screenSize.length; i++) {
				sql = sql.concat("ScreenSize= ");
				sql = sql.concat("'" + screenSize[i] + "'");
				if(screenSize.length > 1 && screenSize.length != (i+1)) {
					sql = sql.concat(" OR ");
				}
			}
		}
		
		//filtering price
		if(price != null) {
			if(filterCounter > 0) {
				sql = sql.concat(" AND ");
			}
			else {
				sql = sql.concat(" where ");
			}
			allProducts = false;
			filterCounter++;
			for(int i = 0; i < price.length; i++) {
				sql = sql.concat("PriceRange= ");
				sql = sql.concat("'" + price[i] + "'");
				if(price.length > 1 && price.length != (i+1)) {
					sql = sql.concat(" OR ");
				}
			}
		}
		
		//filtering the cpu brands
		if(processor != null) {
			if(filterCounter > 0) {
				sql = sql.concat(" AND ");
			}
			else {
				sql = sql.concat(" where ");
			}
			allProducts = false;
			filterCounter++;
			for(int i = 0; i < processor.length; i++) {
				sql = sql.concat("CPUBrand= ");
				sql = sql.concat("'" + processor[i] + "'");
				if(processor.length > 1 && processor.length != (i+1)) {
					sql = sql.concat(" OR ");
				}
			}
		}
		
		//filtering the operating systems
		if(operatingSys != null) {
			if(filterCounter > 0) {
				sql = sql.concat(" AND ");
			}
			else {
				sql = sql.concat(" where ");
			}
			allProducts = false;
			filterCounter++;
			for(int i = 0; i < operatingSys.length; i++) {
				sql = sql.concat("OS= ");
				sql = sql.concat("'" + operatingSys[i] + "'");
				if(operatingSys.length > 1 && operatingSys.length != (i+1)) {
					sql = sql.concat(" OR ");
				}
			}
		}
		
		//filtering the RAM
		if(ram != null) {
			if(filterCounter > 0) {
				sql = sql.concat(" AND ");
			}
			else {
				sql = sql.concat(" where ");
			}
			allProducts = false;
			filterCounter++;
			for(int i = 0; i < ram.length; i++) {
				sql = sql.concat("RAM= ");
				sql = sql.concat("'" + ram[i] + "'");
				if(ram.length > 1 && ram.length != (i+1)) {
					sql = sql.concat(" OR ");
				}
			}
		}
		
		//filtering the HDD
		if(hardDrive != null) {
			if(filterCounter > 0) {
				sql = sql.concat(" AND ");
			}
			else {
				sql = sql.concat(" where ");
			}
			allProducts = false;
			filterCounter++;
			for(int i = 0; i < hardDrive.length; i++) {
				sql = sql.concat("HDD= ");
				sql = sql.concat("'" + hardDrive[i] + "'");
				if(hardDrive.length > 1 && hardDrive.length != (i+1)) {
					sql = sql.concat(" OR ");
				}
			}
		}
		
		//filtering the SSD
		if(ssd != null) {
			if(filterCounter > 0) {
				sql = sql.concat(" AND ");
			}
			else {
				sql = sql.concat(" where ");
			}
			allProducts = false;
			filterCounter++;
			for(int i = 0; i < ssd.length; i++) {
				sql = sql.concat("SSD= ");
				sql = sql.concat("'" + ssd[i] + "'");
				if(ssd.length > 1 && ssd.length != (i+1)) {
					sql = sql.concat(" OR ");
				}
			}
		}
		
		//filtering the weight
		if(weight != null) {
			if(filterCounter > 0) {
				sql = sql.concat(" AND ");
			}
			else {
				sql = sql.concat(" where ");
			}
			allProducts = false;
			filterCounter++;
			for(int i = 0; i < weight.length; i++) {
				sql = sql.concat("WeightRange= ");
				sql = sql.concat("'" + weight[i] + "'");
				if(weight.length > 1 && weight.length != (i+1)) {
					sql = sql.concat(" OR ");
				}
			}
		}		
		
		//filtering the graphics
		if(graphics != null) {
			if(filterCounter > 0) {
				sql = sql.concat(" AND ");
			}
			else {
				sql = sql.concat(" where ");
			}
			allProducts = false;
			filterCounter++;
			for(int i = 0; i < graphics.length; i++) {
				sql = sql.concat("GraphicsBrand= ");
				sql = sql.concat("'" + graphics[i] + "'");
				if(graphics.length > 1 && graphics.length != (i+1)) {
					sql = sql.concat(" OR ");
				}
			}
		}
		
		//filtering battery life
		if(batteryLife != null) {
			if(filterCounter > 0) {
				sql = sql.concat(" AND ");
			}
			else {
				sql = sql.concat(" where ");
			}
			allProducts = false;
			filterCounter++;
			for(int i = 0; i < batteryLife.length; i++) {
				sql = sql.concat("BatterLifeRange= ");
				sql = sql.concat("'" + batteryLife[i] + "'");
				if(batteryLife.length > 1 && batteryLife.length != (i+1)) {
					sql = sql.concat(" OR ");
				}
			}
		}
		
		//filterin category of computer use
		if(category != null) {
			if(filterCounter > 0) {
				sql = sql.concat(" AND ");
			}
			else {
				sql = sql.concat(" where ");
			}
			allProducts = false;
			filterCounter++;
			for(int i = 0; i < category.length; i++) {
				sql = sql.concat("Category= ");
				sql = sql.concat("'" + category[i] + "'");
				if(category.length > 1 && category.length != (i+1)) {
					sql = sql.concat(" OR ");
				}
			}
		}

		//if user wants to filter, execute said filter
		if(allProducts == false) {
			sql = sql.concat(";");
			System.out.println(sql);
			ResultSet resultSet = stmt.executeQuery(sql);
			boolean results = false;
			%>
			<table border="1" cellpadding=3>
			<%while(resultSet.next()) { %>
			<tr>
				<%results = true;
				int laptop_id = resultSet.getInt(1); %>
			  	<td> <%= laptop_id %></td>
			  	<%String imgSource = resultSet.getString(31);%>
				<td> <a href="laptop.jsp?prodID=<%=laptop_id%>"><img src="<%=imgSource%>" alt=<%=laptop_id%>></a> </td>
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
		<%}
	%>

<%
// close database connections
stmt.close();
con.close();
%>
</body>
</html>
