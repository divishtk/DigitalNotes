<%@page import="com.Users.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnection"%>
<%@page import="com.DAO.postDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<%
	Users users1 = (Users) session.getAttribute("usersDetails");

if (users1 == null) {

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
<style>
body {
	overflow: auto;
}
</style>


</head>



<body>




	<%@include file="allcontent/navbar.jsp"%>
	<%
		String updateMessage = (String) session.getAttribute("updateSuccess");

	if (updateMessage != null) {
	%>


	<div class="alert alert-success" role="alert"><%=updateMessage%>
	</div>

	<%}

	session.removeAttribute("updateSuccess");

%>




	<%
	
	String deleteBook=(String)session.getAttribute("bookdeleted");
	
	if(deleteBook!=null)
	{%>
		
		
		
		<div class="alert alert-danger" role="alert"><%=deleteBook%>
	</div>
		
		
		
		
		
		
	<%}
	
	session.removeAttribute("bookdeleted");
	
	
	%>





	<div class="container p-0">


		<h2 class="text-center mt-4">Your Notes</h2>





		<div class="row">

			<div class="col-md-12">



				<%
					String bookMsg = (String) session.getAttribute("bookID");
				String noBookFound = (String) session.getAttribute("noBookFound");

				if (bookMsg != null) {
				%>





				<div class="alert alert-danger" role="alert"><%=bookMsg%></div>






				<%
					}

				//else
				%>






				<%
					session.removeAttribute("bookID");
				%>






				<%
					if (users1 != null)

				{

					postDAO ob = new postDAO(DBConnection.getConnection());
					List<Post> post = ob.getBooksDetails(users1.getId());

					//for debugging
					System.out.println("User id is" + users1);

					System.out.println("List id is" + post);
					for (Post po : post)

					//for(int i=0;i<=2;i++)

					//	System.out.println("Book Title is is"+po.getId());
					//System.out.println("Book Content is is"+ po.getContent());

					{
				%>



				<div class="card mt-3">
					<img src="img/final.png" class="card-img-top mt-2 mx-auto"
						style="max-width: 200px">

					<div class="card-body p-4">





						<h5 class="card-title">
							<b class="text-secondary"> Title</b>
							<%=po.getTitle()%></h5>

						<h5 class="card-title">
							<b class="text-secondary">Content</b>
							<%=po.getContent()%></h5>


						<h5>
							<b class="text-secondary"> Published By </b>


							<%=users1.getName()%>


						</h5>

						<h6>
							<b class="text-secondary"> Published By</b>
							<%=po.getPdate()%>



						</h6>


<%-- 												<input type="text" value=<%=po.getId()%> name="noteid"> --%>







						<%-- 							<b class="text-warning">Id is -<%=po.getUserId() %>> </b> --%>
						<div class="container text-center mt-4">
							<a href="editBooks.jsp?bookId=<%=po.getId()%>"
								class="btn btn-success mr-3">Edit</a>
								
								
								
								
						
								
								
								
								 <a
								href="deleteServlet?deleteId=<%=po.getId()%>"
								class="btn btn-danger">Delete</a>
							



						</div>



					</div>

				</div>






				<%
					}

				}
				%>



				<div class="container"></div>

			</div>


		</div>





	</div>



</body>
</html>







