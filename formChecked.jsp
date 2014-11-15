





<%//NOT USED ANYMORE!!!!%>





<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Selected Checkboxes</h1>
	<table cellpadding="1"  cellspacing="1" border="1" bordercolor="gray">
		<tr>
			<td>Brands</td>			
		</tr>
		<%
			String[] brand  = (String[])request.getParameterValues("brand");
			if(brand != null)
			{
				
				for(String e : brand)
				{
				//	System.out.println(e);
				%>
				<tr>
					<td><%=e%></td>
				</tr>
				<%
				}
			}
			else
				System.out.println("wat");
				
		
		%>
	</table>
	
	<% 
		boolean allProducts = true;
		String[] brands  = (String[])request.getParameterValues("brand");
		String[] processes = (String[])request.getParameterValues("processor");
	
		if(brands != null)
		{
			System.out.println("woahhh brands :D");
			allProducts = false;
		}
		
		if(processes != null)
		{
			System.out.println("woahhh processes :D");
			allProducts = false;
		}
		
		
		if(allProducts)
		{
			System.out.println("print allll da products :D");
		}
	%>
	
</body>
</html>
