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

@WebServlet("/EditjobsServlet")
public class EditjobsServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try
		{
			Integer jobid=Integer.parseInt(request.getParameter("jobid"));
			String title=request.getParameter("title");
			String job_profile=request.getParameter("job_profile"); 
			PostDAO post=new PostDAO(DBConnect.getCon());
			boolean f=post.PostUpdate(jobid,title, job_profile);
			if(f)
			{
				
				HttpSession session = request.getSession();
				session.setAttribute("UpdateMsj","Update  Sucessfully...");
				response.sendRedirect("showjobs.jsp");
			}
			else
			{
				HttpSession session = request.getSession();
				session.setAttribute("Updatefailed", "Update Failed Something went wrong on Server.. ");
				response.sendRedirect("showjobs.jsp");
			}
		}
		 catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
