<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<%@ include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@ include file="all_component/navbar.jsp"%>

	<div class="container-fluid bg-custom1">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Registration</h4>
					</div>

					<%
					String regMsj = (String) session.getAttribute("reg-sucess");
					if (regMsj != null) {
					%>
					<div class="alert alert-success" role="alert"><%=regMsj%>
						Login<a href="login.jsp">Click Here..</a>
					</div>
					<%
					session.removeAttribute("reg-sucess");
					}
					%>

					<%
					String failedMsj = (String) session.getAttribute("reg-failed");
					if (failedMsj != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%=failedMsj%></div>
					<%
					session.removeAttribute("reg-failed");
					}
					%>
					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="form-group">
								<label for="exampleInputname">Enter Full Name:</label> <input
									type="text" class="form-control" id="exampleInputname"
									name="fname">

							</div>
							<div class="form-group">
								<label for="exampleInputemail">Enter Email:</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									name="uemail">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password:</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid bg-dark bikash ">
<p class="text-center text-white">Note:if any problem facing Regarding Job Search contact with Bikash </p>
<p class="text-center text-white">Designed & devloped by Bikash Kumar Jena</p>
</div>


</body>
</html>