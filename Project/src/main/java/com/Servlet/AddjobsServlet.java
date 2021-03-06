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
import com.User.Post;

@WebServlet("/AddjobsServlet")
public class AddjobsServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int uid=Integer.parseInt(request.getParameter("uid"));
		String title=request.getParameter("title");
		String job_profile=request.getParameter("job_profile");
		PostDAO pd= new PostDAO(DBConnect.getCon());
		boolean f=pd.addJobs(title, job_profile, uid);
		if (f) {
			
			HttpSession session = request.getSession();
			
			
			
			session.setAttribute("UpdateMsj","Update  Sucessfully...");
			
			
			response.sendRedirect("showjobs.jsp");
		} else {
			
			HttpSession session = request.getSession();
			session.setAttribute("Updatefailed", "Update Failed Something went wrong on Server.. ");
			response.sendRedirect("showjobs.jsp");
		}
		

	}

}
