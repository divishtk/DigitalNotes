<%@page import="com.DB.DBConnection"%>
<%@page import="com.DAO.postDAO"%>
<%@page import="com.Users.Post"%>
<%@page import="java.util.List"%>
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
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="bootstrapandjs/bootandjs.jsp"%>

</head>
<body>
		

<%


int bookid=Integer.parseInt(request.getParameter("bookId"));




postDAO postdao=new postDAO(DBConnection.getConnection());
Post p=postdao.getBooksById(bookid);




%>




	<div class="container-fluid p-0">
		<%@include file="allcontent/navbar.jsp"%>

		<h1 class="text-center mt-4">Edit Notes Here</h1>






		<div class="container mt-5">
				
				
			
				
				
				
				
				
				
			<div class="row">

				<div class="col-md-12">



					<form action="editServlet" method="POST">

				
					
 				<input type="hidden" value=<%=bookid%> name="bookid">  <%-- just for checking whether id is getting or not via query string --%>
				


						<div class="form-group">
							<label for="exampleInputEmail1">Your Note Title:</label> <input
								type="text" class="form-control" id="title"
								aria-describedby="emailHelp" placeholder="Enter title"
								name="title" required  value=<%=p.getTitle()%>>
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
								placeholder="Enter Content here" name="content" required ><%=p.getContent() %></textarea>



						</div>

						<div class="container text-center">
							<button class="btn btn-success">Update</button>
<!-- 	<input type="submit" value="update" class="	btn btn-primary"> -->
							<button class="btn btn-danger">Reset</button>

						</div>


					</form>
				</div>

			</div>

		</div>



	</div>



</body>
</html>