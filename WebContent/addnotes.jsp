
<%@page import="com.Users.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnection"%>
<%@page import="com.DAO.postDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	Users userDetail = (Users) session.getAttribute("usersDetails");

System.out.println("User -->" + userDetail);

if (userDetail == null) {

	HttpSession hs = request.getSession();
	session.setAttribute("loginFirst", "Please Login First");

	response.sendRedirect("login.jsp");

}
%>

<%
						
						
						int newId= Integer.parseInt(session.getAttribute("bookId").toString());
						System.out.println("new id is "+newId);
						int userIdOfPorst=0;
							
						
						if(userDetail!=null)
						{
							
							
							postDAO obj= new postDAO(DBConnection.getConnection());
							List<Post> post= obj.getBooksDetails(userDetail.getId());
							
							
							System.out.println(" NEW User id is" + newId);

							System.out.println(" NEW List id is" + post);
							
						
							
							
							for(Post po:post)
							{
								
								
								 userIdOfPorst=po.getUserId();
								
								
								System.out.println("User id of porst table is" + userIdOfPorst);

								
								
								
								
							
								
							}
						
							if(newId!=userIdOfPorst)
							{
								
								session.setAttribute("bookID","No Books Found");
								
								
								
								
								
							}
							
							
							
							
							
							
						}
							
						
				
						
						
						
						
						
						
						
						
						
						
						
						
						
						%>






<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="bootstrapandjs/bootandjs.jsp"%>

</head>
<style>
body {
	overflow: auto;
}
</style>


<body>




	<div class="container-fluid p-0">
		<%@include file="allcontent/navbar.jsp"%>

		<h1 class="text-center mt-4">Add Notes Here</h1>






		<div class="container mt-5">
				<%
					String addedNotesMsg = (String) session.getAttribute("addednotes");
	
				System.out.println("Added notes msg --->" + addedNotesMsg);
				
				
				
			
				
				
				
	
				if (addedNotesMsg != null) 
				
				
				{
					
					
				%>
	
	
				<div class="alert alert-danger" role="alert"><%=addedNotesMsg%></div>
	
	
	
				<%
					}
	
				session.removeAttribute("addednotes");
				%>
				
				
				
				
			<div class="row">

				<div class="col-md-12">



					<form action="addNotesServlet" method="POST">

						<%
							Users userDetails = (Users) session.getAttribute("usersDetails");
						if (userDetails != null) 
						{
							
							
							
							int userid = userDetails.getId();
							
							
						%>

						<input type=hidden value=<%=userid%> name="uid">


						<%
							}
						%>




						<div class="form-group">
							<label for="exampleInputEmail1">Your Note Title:</label> <input
								type="text" class="form-control" id="title"
								aria-describedby="emailHelp" placeholder="Enter title"
								name="title" required>
						</div>


						<div class="form-group">
							<label for="exampleInputEmail1">Description:</label> <input
								type="text" class="form-control" id="description"
								aria-describedby="emailHelp" placeholder="Enter description"
								name="description">
						</div>


						<div class="form-group">
							<label for="exampleInputEmail1">Your Content:</label>

							<textarea rows="9" cols="" class="form-control"
								placeholder="Enter Content here" name="content" required></textarea>



						</div>

						<div class="container text-center">
							<button class="btn btn-primary">Submit</button>
							<button class="btn btn-danger">Reset</button>

						</div>


					</form>
				</div>

			</div>

		</div>



	</div>


</body>
</html>