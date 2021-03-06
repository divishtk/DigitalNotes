package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.postDAO;
import com.DAO.userDAO;
import com.DB.DBConnection;
import com.Users.Post;
import com.Users.Users;

@WebServlet("/logingServlet")
public class logingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public logingServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{

		
		
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		HttpSession httpSession =request.getSession();

		Users usersDetails = new Users();
		usersDetails.setEmail(email);
		usersDetails.setPassword(password);

		httpSession = request.getSession();
		httpSession.setAttribute("email", email);

		

		
		
		
		userDAO ud = new userDAO(DBConnection.getConnection());
		Users users = ud.loginUser(usersDetails);

		/*
		 * int i=ud.loginUser(usersDetails); 
		 * if(i==1) 
		 * {
		 * 
		 * out.println("Logged in"); response.sendRedirect("home.jsp"); } else {
		 * //out.println("Failed to login"); httpSession=request.getSession();
		 * httpSession.setAttribute("FailedToLogin", "You are not registered");
		 * response.sendRedirect("login.jsp");
		 * 
		 * }
		 */
		
		
		
		
		
		
		
		
		

		

		
	
	
		
		
		
		
		
		
		
		
		
		

		if (users != null) {

			out.println("Logged in");

			HttpSession session = request.getSession();
			session.setAttribute("usersDetails", users);
			response.sendRedirect("home.jsp");
			
			
			
		
			
			
			
			
			

			// Setting the name of users
		} else {
			// out.println("Failed to login");
			httpSession = request.getSession();
			httpSession.setAttribute("FailedToLogin", "You are not registered");
			response.sendRedirect("login.jsp");

		}
		

	
		
		
			
	}
		
		
		

}
