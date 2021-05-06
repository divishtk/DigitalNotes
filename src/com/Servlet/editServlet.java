package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.postDAO;
import com.DB.DBConnection;
import com.Users.Post;


@WebServlet("/editServlet")
public class editServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		
		
		try
		{
			
		
		
		int id=Integer.parseInt(request.getParameter("bookid"));
		String t=request.getParameter("title");
		String c=request.getParameter("content");
		
		
		
			
			
			
			postDAO postdao= new postDAO(DBConnection.getConnection());
			
			boolean postBook=postdao.notesUpdate(id, t, c);
			
			
			
			if(postBook)
			{
				
				System.out.println("Sucessfully Updated the notes");
				
				HttpSession session=request.getSession();
				session.setAttribute("updateSuccess","Updated Your Note Succesfully");
				response.sendRedirect("displayNotes.jsp");

				
			}
		
			else
			{
				
				System.out.println("Not Updated the notes");

			}
		
		}
		catch(Exception ex)
		{
			
			ex.printStackTrace();
			
		}
		
		
		
		
	}
	
}
