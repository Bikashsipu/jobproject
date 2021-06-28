<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@ include file="all_component/allcss.jsp" %>
</head>
<body>
<%@ include file="all_component/navbar.jsp" %>
<div class="container-fluid bg-custom1">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card mt-5">
<div class="card-header text-center text-white bg-custom">
<i class="fa fa-user-circle-o fa-3x" aria-hidden="true"></i>
<h4>Login</h4></div>

					<%
					String failedMsj=(String)session.getAttribute("login-failed");
					if (failedMsj != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%=failedMsj%></div>
					<%
					session.removeAttribute("login-failed");
					}
					%>
					
					<%
					String withoutlogin=(String)session.getAttribute("Login-error");
					if (withoutlogin != null) {%>
					<div class="alert alert-danger" role="alert">
						<%=withoutlogin%></div>
				<%
				session.removeAttribute("Login-error");
				}
					
					%>
					<%
					String logoutMsj=(String)session.getAttribute("logoutMsj");
					if (logoutMsj != null) {%>
					<div class="alert alert-success" role="alert">
						<%=logoutMsj%></div>
				<%
				session.removeAttribute("logoutMsj");
				}
					%>
<div class="card-body"><form action="LoginServlet" method="post">
 
  <div class="form-group">
    <label for="exampleInputemail">Enter Email:</label>
    <input type="email" class="form-control" id="exampleInputEmail1" name="uemail" >
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Password:</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="upassword" >
  </div>
  
  <button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
</form></div></div></div></div></div>
<div class="container-fluid bg-dark bikash ">
<p class="text-center text-white">Note:if any problem facing Regarding Job Search contact with Bikash </p>
<p class="text-center text-white">Designed & devloped by Bikash Kumar Jena</p>
</div>

</body>
</html>