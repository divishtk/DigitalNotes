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
import com.DB.DBConnection;




@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		PrintWriter io=response.getWriter();
		int deleteid=Integer.parseInt(request.getParameter("deleteId"));
		
		
	//	io.println("came to delete servlet and id is "+deleteid);
		
	
		
		postDAO postDAO=new  postDAO(DBConnection.getConnection());
		
		boolean check=postDAO.deleteNotebyId(deleteid);
		
		if(check)
		{
			
			
			System.out.println("Sucessfully Deleted");
			HttpSession hp=request.getSession();
			hp.setAttribute("bookdeleted","Succesfully Delete Your Note");
			response.sendRedirect("displayNotes.jsp");
		}
		
		else
		{
			
			System.out.println("Failed To Delete");

			
		}
		
		
		
		
		
		
		
		
		
		
		
	}

}
