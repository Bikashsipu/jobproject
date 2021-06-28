<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="com.DB.DBConnect"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Index Home Page</title>
<style type="text/css">.bikasha{
position:absolute;
	width:100%;
	bottom:0%;}</style>

<%@ include file="all_component/allcss.jsp"%>

</head>
<body class="back-img">

	<%@ include file="all_component/navbar.jsp"%>


	<div class="text-center mt-5">

		<h1 class="text-white">
			<i class="fa fa-search-plus" aria-hidden="true"></i>JOBS AROUND YOU
		</h1>
		<P class="text-white">Search & Find Your Dream jobs</P>
		<a href="login.jsp" class="btn btn-light my-2 my-sm-0 mr-2 "
			type="submit"><i class="fa fa-sign-in" aria-hidden="true"></i>Login</a>
		<a href="register.jsp" class="btn btn-light my-2 my-sm-0 mr-2 "
			type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>

	</div>
	<div class="container-fluid bg-dark bikasha">
<p class="text-center text-white">Note:if any problem facing Regarding Job Search contact with Bikash </p>
<p class="text-center text-white">Designed & devloped by Bikash Kumar Jena</p>
</div>
	
	



</body>
</html>