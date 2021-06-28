package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.PostDAO;
import com.DB.DBConnect;

@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			Integer jobid=Integer.parseInt(request.getParameter("jobid"));
			
			PostDAO pd= new PostDAO(DBConnect.getCon());
			
			boolean f=pd.DeleteJobs(jobid);
			if(f)
			{
				HttpSession session = request.getSession();
				session.setAttribute("DeleteMsj","Delete  Sucessfully...");
				response.sendRedirect("showjobs.jsp");
				
			}
			else
			{
			
				HttpSession session = request.getSession();
				session.setAttribute("wrongMsj", "Update Failed Something went wrong on Server.. ");
				response.sendRedirect("showjobs.jsp");
			}
		

	}

}
