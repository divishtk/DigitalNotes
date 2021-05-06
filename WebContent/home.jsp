<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnection"%>
<%@page import="com.DAO.postDAO"%>
<%@page import="com.Users.Post"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<%
	Users users = (Users) session.getAttribute("usersDetails");

if (users == null) {

	session.setAttribute("loginFirst","Please Login First");

	response.sendRedirect("login.jsp");
}
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@include file="bootstrapandjs/bootandjs.jsp"%>

<style>
.cust {
	margin-top: -70px;
}
</style>
<body>



	<div class="container-fluid p-0">
		<%@include file="allcontent/navbar.jsp"%>

		<div class=" py-5">
			<div class=" text-center py-10">

				<img alt=" " src="img/final.png" class="img-fluid mx-auto"
					style="max-width: 330px">









						
						
							
							<%
							
							Users users2=(Users)session.getAttribute("usersDetails");
							
							
							
						
							
							if(users2!=null)
							{
								
								int uid=users.getId();
								
								System.out.println("UIDDD ISS"+uid);

								
								HttpSession sessions=request.getSession();
								
								session.setAttribute("bookId", uid);
								
								
								%>
								
								
								
								


				<input type="hidden" value=<%=uid%> >								
								
								
								
								
								
						<% 	}
	
							%>
			







						<%
						
						
						int newId= Integer.parseInt(session.getAttribute("bookId").toString());
						System.out.println("new id is "+newId);
						int userIdOfPorst=0;
							
						
						if(users2!=null)
						{
							
							
							postDAO obj= new postDAO(DBConnection.getConnection());
							List<Post> post= obj.getBooksDetails(users2.getId());
							
							
							System.out.println(" NEW User id is" + users2);

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







		


				<h1 class="mt-5">Add Your Notes Here!</h1>

				<a href="addnotes.jsp" class="btn btn-outline-success mt-5">ADD
					HERE</a>
			</div>


			<div class="container ">
				<div class="col-md-2  offset-md-2  cust">
					<img alt=" " src="img/teacher.png" class="img-fluid mx-auto"
						style="max-width: 100px">

				</div>

			</div>



		</div>



	</div>




</body>
</html>