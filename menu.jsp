<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"
import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Six Sigma Inc. - Home Page</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" type="text/css" href="bootstrap.min.css" />

    <!-- Fonts -->
    <link rel="stylesheet" type="text/css" href="font-awesome.min.css" />

	<link href="http://www.prepbootstrap.com/Content/css/squad/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="http://www.prepbootstrap.com/Content/css/squad/style.css" rel="stylesheet">
	<link href="http://www.prepbootstrap.com/Content/css/squad/default.css" rel="stylesheet">
</head>
<%
//Database connection
String url = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=W:\\mie350workspace\\webapptrial\\Database\\Database.accdb";
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection(url); 
Statement stmt = con.createStatement(); 
%>



<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
	<!-- Preloader -->
	<div id="preloader">
	  <div id="load"></div>
	</div>

    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.jsp">
                <h1>
                    Team Six &#931; Inc.
                </h1>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
      <ul class="nav navbar-nav">
        <li><a href="index.jsp">Home</a></li>
        <li><a href="aboutUs.jsp">About Us</a></li>
		<li><a href="products.jsp">Products</a></li>
		<li><a href="compare.jsp">Compare</a></li>       
		<li><a href="searchForm.jsp">Search</a></li>
      </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

<!-- Section: intro -->
    <section id="intro" class="intro" style="background:url('blue.jpg') no-repeat top center;">
	<%//above is menu stuff?????? %>
		<div class="slogan">
			<h2>Team Six Sigma</h2>
			<h4>Making laptop purchases easier since 2014.</h4>
		</div>
		<!-- 
		<div class="page-scroll">
			<a href="#service" class="btn btn-circle">
				<i class="fa fa-angle-double-down animated"></i>
			</a>
		</div>
		-->
		
    </section>
	<!-- /Section: intro -->




<br />
	
	
	
	
	

    <!-- Core JavaScript Files -->
    <script src="http://www.prepbootstrap.com/Content/js/squad/jquery.min.js"></script>    
    <script src="http://www.prepbootstrap.com/Content/js/squad/jquery.easing.min.js"></script>	
	<script src="http://www.prepbootstrap.com/Content/js/squad/jquery.scrollTo.js"></script>
	<script src="http://www.prepbootstrap.com/Content/js/squad/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="http://www.prepbootstrap.com/Content/js/squad/custom.js"></script>
    
    
</body>
</html>
