<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>I filter like a boss</title>
</head>
<body>
<form name="filterForm" method="POST" action="products.jsp">
<h4>BRAND</h4>
<table>
<tr><td><p><label><input type="checkbox" name="brand" value="Acer"/>Acer</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="brand" value="Apple"/>Apple</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="brand" value="Asus"/>Asus</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="brand" value="Dell"/>Dell</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="brand" value="HP"/>HP</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="brand" value="Lenovo"/>Lenovo</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="brand" value="Sony"/>Sony</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="brand" value="Toshiba"/>Toshiba</label></p></td></tr>
</table>
<h4>PROCESSOR</h4>
<table>
<tr><td><p><label><input type="checkbox" name="processor" value="AMD"/>AMD</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="processor" value="Intel i3"/>Intel i3</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="processor" value="Intel i5"/>Intel i5</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="processor" value="Intel i7"/>Intel i7</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="processor" value="Other Intel"/>Other Intel</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="processor" value="Nvidia"/>Nvidia</label></p></td></tr>
</table>
<h4>HARD DRIVE</h4>
<table>
<tr><td><p><label><input type="checkbox" name="hardDrive" value="320 GB"/>320 GB</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="hardDrive" value="500 GB"/>500 GB</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="hardDrive" value="750 GB"/>750 GB</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="hardDrive" value="1 TB"/>1 TB</label></p></td></tr>
</table>
<p><input type="submit" value="submit"/>
</form>
  
</body>
</html>
