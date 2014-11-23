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

<h4>OPERATING SYSTEM</h4>
<table>
<tr><td><p><label><input type="checkbox" name="operating system" value="Windows 7"/>Windows 7</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="operating system" value="Windows 8"/>Windows 8</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="operating system" value="Windows 8.1"/>Windows 8.1</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="operating system" value="OS X 10.9 Mavericks"/>OS X 10.9 Mavericks</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="operating system" value="Chrome OS"/>Chrome OS</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="operating system" value="Android Jelly Bean 4.3"/>Android Jelly Bean 4.3</label></p></td></tr>
</table>
<h4>RAM</h4>
<table>
<tr><td><p><label><input type="checkbox" name="ram" value="2 GB"/>2 GB</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="ram" value="4 GB"/>4 GB</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="ram" value="6 GB"/>6 GB</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="ram" value="8 GB"/>8 GB</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="ram" value=">=16 GB"/>&ge;16 GB</label></p></td></tr>
</table>
<h4>PRICE</h4>
<table>
<tr><td><p><label><input type="checkbox" name="price"  value="<$500"/><$500</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="price" value="$500-$800"/>$500-$800</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="price" value="$800-$1100"/>$800-$1100</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="price" value="$1100-$1400"/>$1100-$1400</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="price" value=">$1400"/>&gt;$1400</label></p></td></tr>
</table>
<h4>WEIGHT</h4>
<table>
<tr><td><p><label><input type="checkbox" name="weight" value="< 3 lbs"/>&lt; 3 lbs</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="weight" value="3 lbs to < 4 lbs"/>3 lbs to &lt; 4 lbs</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="weight" value="4 lbs to < 5 lbs"/>4 lbs to &lt; 5 lbs</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="weight" value="5 lbs to < 6 lbs"/>5 lbs to &lt; 6 lbs</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="weight" value="> 6 lbs"/>&gt; 6 lbs</label></p></td></tr>
</table>
<h4>GRAPHICS</h4>
<table>
<tr><td><p><label><input type="checkbox" name="graphics" value="Nvidia"/>Nvidia</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="graphics" value="Intel"/>Intel</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="graphics" value="AMD"/>AMD</label></p></td></tr>
</table>
<h4>SCREEN SIZE</h4>
<table>
<tr><td><p><label><input type="checkbox" name="screen size" value="10.1&quot;"/>10.1&quot;</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="screen size" value="11.6&quot;"/>11.6&quot;</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="screen size" value="12.5&quot;"/>12.5&quot;</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="screen size" value="13.3&quot;"/>13.3&quot;</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="screen size" value="14.0&quot;"/>14.0&quot;</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="screen size" value="15.4&quot;"/>15.4&quot;</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="screen size" value="15.5&quot;"/>15.5&quot;</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="screen size" value="15.6&quot;"/>15.6&quot;</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="screen size" value="17.3&quot;"/>17.3&quot;</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="screen size" value="18.4&quot;"/>18.4&quot;</label></p></td></tr>
</table>
<h4>SSD</h4>
<table>
<tr><td><p><label><input type="checkbox" name="ssd" value="8 GB"/>8 GB</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="ssd" value="16 GB"/>16 GB</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="ssd" value="32 GB"/>32 GB</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="ssd" value="64 GB"/>64 GB</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="ssd" value="128 GB"/>128 GB</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="ssd" value="256 GB"/>256 GB</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="ssd" value="512 GB"/>512 GB</label></p></td></tr>
</table>
<h4>BATTERY LIFE</h4>
<table>
<tr><td><p><label><input type="checkbox" name="battery life" value="< 4 hours"/>&lt; 4 hours</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="battery life" value="4 to < 6 hours"/>4 to &lt; 6 hours</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="battery life" value="6 to < 8 hours"/>6 to &lt; 8 hours</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="battery life" value="8 to < 10 hours"/>8 to &lt; 10 hours</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="battery life" value="> 10 hours"/>&gt; 10 hours</label></p></td></tr>
</table>
<h4>CATEGORIES</h4>
<table>
<tr><td><p><label><input type="checkbox" name="categories" value="Performance/Gaming"/>Performance/Gaming</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="categories" value="Work/School"/>Work/School</label></p></td></tr>
<tr><td><p><label><input type="checkbox" name="categories" value="Lightweight"/>Lightweight</label></p></td></tr>
</table>
<p><input type="submit" value="Submit"/></p>
</form>
  
</body>
</html>
