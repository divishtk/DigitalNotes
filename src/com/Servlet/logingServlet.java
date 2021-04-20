package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.userDAO;
import com.DB.DBConnection;
import com.Users.Users;


@WebServlet("/logingServlet")
public class logingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public logingServlet() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		PrintWriter out=response.getWriter();
		
		
		Users usersDetails=new Users();
		usersDetails.setEmail(email);
		usersDetails.setPassword(password);
			
		
		
		userDAO ud=new userDAO(DBConnection.getConnection());
		int i=ud.loginUser(usersDetails);
		
		
		
		
		
		if(i==1)
		{
			
			out.println("Logged in");
			response.sendRedirect("home.jsp");
		}
		else
		{
			out.println("Failed to login");
		}
		
		
		
		
		
	}

}
