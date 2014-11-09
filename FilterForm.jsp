<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="filterForm" method="POST" action="formChecked.jsp">
<h4>BRAND</h4>
<table>
<tr><td><p><input type="checkbox" name="brand" value="Acer"/>Acer</p></td></tr>
<tr><td><p><input type="checkbox" name="brand" value="Apple"/>Apple</p></td></tr>
<tr><td><p><input type="checkbox" name="brand" value="Asus"/>Asus</p></td></tr>
<tr><td><p><input type="checkbox" name="brand" value="Dell"/>Dell</p></td></tr>
<tr><td><p><input type="checkbox" name="brand" value="HP"/>HP</p></td></tr>
<tr><td><p><input type="checkbox" name="brand" value="Lenovo"/>Lenovo</p></td></tr>
<tr><td><p><input type="checkbox" name="brand" value="Sony"/>Sony</p></td></tr>
<tr><td><p><input type="checkbox" name="brand" value="Toshiba"/>Toshiba</p></td></tr>
</table>
<h4>PROCESSOR</h4>
<table>
<tr><td><p><input type="checkbox" name="processor" value="AMD"/>AMD</p></td></tr>
<tr><td><p><input type="checkbox" name="processor" value="Intel Core i3"/>Intel Core i3</p></td></tr>
<tr><td><p><input type="checkbox" name="processor" value="Intel Core i5"/>Intel Core i5</p></td></tr>
<tr><td><p><input type="checkbox" name="processor" value="Intel Core i7"/>Intel Core i7</p></td></tr>
<tr><td><p><input type="checkbox" name="processor" value="Other Intel"/>Other Intel</p></td></tr>
<tr><td><p><input type="checkbox" name="processor" value="Nvidia"/>Nvidia</p></td></tr>
</table>
<p><input type="submit" value="submit"/>
</form>
</body>
</html>
