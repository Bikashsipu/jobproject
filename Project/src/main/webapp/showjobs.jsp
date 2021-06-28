<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.DAO.PostDAO"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="java.util.*"%>
<%@ page import="com.User.Post"%>
<%
UserDetails user3 = (UserDetails) session.getAttribute("userD");
if (user3 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login...");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Jobs</title>
<%@ include file="all_component/allcss.jsp"%>
<style type="text/css">.bikasha{
position:relative;
	width:100%;
	bottom:0%;}</style>
</head>
<body>
	<%@ include file="all_component/navbar.jsp"%>
	
	
	<%
					String UpdateMsj=(String)session.getAttribute("UpdateMsj");
					if (UpdateMsj != null) {
					%>
					<div class="alert alert-success" role="alert">
						<%=UpdateMsj%></div>
					<%
					session.removeAttribute("UpdateMsj");
					}
					%>
					<%
					String Updatefailed = (String) session.getAttribute("Updatefailed");
					if (Updatefailed != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%=Updatefailed%></div>
					<%
					session.removeAttribute("Updatefailed");
					}
					%>
					<%
					String DeleteMsj=(String)session.getAttribute("DeleteMsj");
					if (DeleteMsj != null) {
					%>
					<div class="alert alert-success" role="alert">
						<%=DeleteMsj%></div>
					<%
					session.removeAttribute("DeleteMsj");
					}
					%>
					<%
					String wrongMsj=(String)session.getAttribute("wrongMsj");
					if (wrongMsj != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%=wrongMsj%></div>
					<%
					session.removeAttribute("wrongMsj");
					}
					%>
	<div class="container">
		<h1 class="text-center">All Job Details</h1>
		<div class="row">
			<div class="col-md-12">

				<%
				if (user3 != null) {
					PostDAO ob = new PostDAO(DBConnect.getCon());
					List<Post> post = ob.getData(user3.getId());
					for (Post po : post) {
				%>
				<div class="card mt-3">
					<img alt="" src="img/1.jpg" class="card-img-top mt-3 mx-auto"
						style="max-width: 150px;">
					<div class="card-body  p-4">



						<h5 class="card-title"><%=po.getTitle()%></h5>
						<p><%=po.getJob_profile()%></p>
						<p>
							<b class="text-sucess">Updated By:<%=user3.getName()%></b> </br> <b
								class="text-primary"></b>
						</p>
						<p>
							<b class="text-sucess">Post Date:<%=po.getDate()%></b> </br> <b
								class="text-sucess"></b>
						</p>

						<div class="container text-center mt-2">
							<a value="<%=po.getId()%>" href="deleteServlet?jobid=<%=po.getId()%>"
								name="del"class="btn btn-danger " type="submit">Delete</a>
								
								
								 <a href="edit.jsp?jobid=<%=po.getId()%>"
								class="btn btn-primary " type="submit">Edit</a>
						</div>
					</div>
				</div>
				<%
				}
				}
				%>

			</div>
		</div>
	</div>

<div class="container-fluid bg-dark bikasha mt-4">
<p class="text-center text-white">Note:if any problem facing Regarding Job Search contact with Bikash </p>
<p class="text-center text-white">Designed & devloped by Bikash Kumar Jena</p>
</div>

</body>
</html>