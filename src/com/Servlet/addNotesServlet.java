package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.postDAO;
import com.DB.DBConnection;

@WebServlet("/addNotesServlet")
public class addNotesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
		
		int id=Integer.parseInt(request.getParameter("uid"));
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		//String desc=request.getParameter("description");
		
		
		postDAO pdao= new postDAO(DBConnection.getConnection());
		
		boolean t=pdao.AddNotes(title,content,id);
		if(t)
		{
			
			System.out.println("Data inserted sucessfully");
			
			
			
		}
		else
		{
			System.out.println("Data not inserted sucessfully");

			
		}
		
		
		
		
		
		
	}

}
