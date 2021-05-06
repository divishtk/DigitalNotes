package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logoutServlet")
public class logoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession hs = request.getSession();
		hs.invalidate();

		HttpSession hs2 = request.getSession();

		hs2.setAttribute("msg", "Successfully logged out");
		// response.sendRedirect("home.jsp");

		response.sendRedirect("login.jsp");

		System.out.println("Logged Out");

	}

}
