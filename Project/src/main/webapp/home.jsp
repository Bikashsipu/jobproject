<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
UserDetails user2 = (UserDetails) session.getAttribute("userD");
if (user2 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login...");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@ include file="all_component/allcss.jsp"%>
</head>
<body>

	<div class="container-fluid p-0">
		<%@ include file="all_component/navbar.jsp"%>
		<div class="card py-5 ">
			<div class="card-body text-center">
				<img src="img/1.jpg" alt="" class="img-fluid mx-auto">
				<h1>UPDATE YOUR JOBS DETAILS</h1>
				<a href="addjobs.jsp" class="btn btn-primary " type="submit">UPDATE
					HERE</a>
			</div>
		</div>
	</div>
	<%@ include file="all_component/footer.jsp"%>

</body>
</html>