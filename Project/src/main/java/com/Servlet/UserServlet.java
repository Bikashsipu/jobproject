package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.User.UserDetails;
import com.sun.net.httpserver.HttpServer;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String name = request.getParameter("fname");
		String email = request.getParameter("uemail");
		String password = request.getParameter("upassword");
		UserDetails us = new UserDetails();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		UserDAO ud = new UserDAO(DBConnect.getCon());
		boolean f = ud.addUser(us);
		if (f) {
			HttpSession session = request.getSession();
			session.setAttribute("reg-sucess", "Registration Sucessfully...");
			response.sendRedirect("register.jsp");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("reg-failed", "Something went wrong on Server.. ");
			response.sendRedirect("register.jsp");
		}
	}
}
