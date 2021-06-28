<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.DAO.PostDAO"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="java.util.*"%>
<%@ page import="com.User.Post"%>
	<%
UserDetails user4 = (UserDetails) session.getAttribute("userD");
if (user4 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login...");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Jobs</title>
<%@ include file="all_component/allcss.jsp"%>
</head>
<body>
<%
Integer jobid=Integer.parseInt(request.getParameter("jobid"));
PostDAO post=new PostDAO(DBConnect.getCon());
Post p=post.getDataById(jobid);

%>
	<div class="container-fluid p-0">
		<%@ include file="all_component/navbar.jsp"%>
		<h1 class="text-center">Edit Your Job Profile</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="EditjobsServlet" method="post">
					<input type="hidden" value="<%=jobid%>" name="jobid">
						<div class="form-group">
						

		<label >Enter Title</label> <input
								type="text" class="form-control" name="title"required="required"  value="<%=p.getTitle()%>">					
				
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Job Profile</label>

							<textarea rows="9" cols="" class="form-control"
								name="job_profile" required="required" value="<%=p.getJob_profile()%>"></textarea>
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