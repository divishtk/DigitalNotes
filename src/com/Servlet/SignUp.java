package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.userDAO;
import com.DB.DBConnection;
import com.Users.Users;
import com.mysql.cj.Session;

@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String phoneNo = request.getParameter("phone");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		HttpSession httpSession;

		System.out.println("Name is " + name);

		Users userDetail = new Users();
		userDetail.setName(name);
		userDetail.setPhoneno(phoneNo);
		userDetail.setEmail(email);
		userDetail.setPassword(password);
		
		
		
		userDAO ud=new userDAO(DBConnection.getConnection());
		boolean f=ud.addUsers(userDetail);
		
		if(f)
		{
			//out.println("Inserted Finally");
			 httpSession=request.getSession();
			httpSession.setAttribute("signup-success","Registerd Successfully");
			response.sendRedirect("signup.jsp");
		}
		else
		{
			//out.println("Not Inserted ");
			 httpSession=request.getSession();
				httpSession.setAttribute("signup-fail","Failed To Registerd ");
				response.sendRedirect("signup.jsp");

		}

	}

}
