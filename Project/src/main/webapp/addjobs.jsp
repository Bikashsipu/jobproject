<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login...");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Jobs</title>
<%@ include file="all_component/allcss.jsp"%>
</head>
<body>
	<div class="container-fluid p-0">
		<%@ include file="all_component/navbar.jsp"%>
		<h1 class="text-center">Add Your Job Details</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="AddjobsServlet" method="post">
						<div class="form-group">
							<%
							UserDetails us = (UserDetails) session.getAttribute("userD");
							if (us != null) {
							%>
							<input type="hidden" value="<%=us.getId()%>" name="uid">
							<%
							}
							%>

							<label for="exampleInputEmail1">Enter Title</label> <input
								type="text" class="form-control" name="title"
								required="required">

						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Job Profile</label>

							<textarea rows="9" cols="" class="form-control"
								name="job_profile" required="required"></textarea>
						</div>

						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Update</button>
						</div>
					</form>
				</div>
			</div>
		</div>

	</div>
	<%@ include file="all_component/footer.jsp"%>
</body>
</html>