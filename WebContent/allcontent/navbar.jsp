<%@page import="com.Users.Users"%>
<nav class="navbar navbar-expand-lg navbar-light custom nav-custom">
	<ul class="navbar-nav">
		<li class="nav-item "><a class="navbar-brand cu" href="#"><i
				class="fa fa-address-book mr-2" aria-hidden="true"></i>NOTES APP</a></li>
	</ul>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNavDropdown">
		<ul class="navbar-nav">
			<li class="nav-item "><a class="nav-link mr-2" href="index.jsp"><i
					class="fa fa-home" aria-hidden="true"> Home </i><span
					class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link mr-2"
				href="addnotes.jsp"><i class="fa fa-plus" aria-hidden="true"></i>Add
					Your Notes</a></li>
			<li class="nav-item"><a class="nav-link mr-2" href="#"><i
					class="fa fa-book" aria-hidden="true"></i>Display Notes</a></li>

		</ul>



	</div>





	<form class="form-inline" >

		<%
			Users getUser = (Users) session.getAttribute("usersDetails");
		//String name=(String)session.getAttribute("email");

		if (getUser != null) {
		%>




		<%--    <button class="btn btn-outline-success mr-3" data-toggle="modal" data-target="#exampleModal" type="button"><i class="fa fa-user-plus" aria-hidden="true"><%=getUser.getName() %></i></button> --%>
		<!--     <button class="btn btn-sm btn-outline-secondary" type="button" onclick="document.location='signup.jsp'"><i class="fa fa-user-plus" aria-hidden="true"></i> -->
		<!--     Logout</button> -->


		<button type="button" class="btn btn-light mr-4">
			<i class="fa fa-sign-in" aria-hidden="true" data-toggle="modal"
				data-target="#exampleModal"><%=getUser.getName()%></i>
		</button>
		
		
		<button type="button" class="btn btn-light mr-4" >
			<i class="fa fa-user-plus" aria-hidden="true">Logout</i>
		</button>

<%-- <a href="${pageContext.request.contextPath}/logoutServlet">Tank list</a> --%>











		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Your profile</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<%--         Name<%=getUser.getName() %> --%>
						<%--                 Email<%=getUser.getEmail()%> --%>



						<div class="container text-center">
							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>

							<table class="table">

								<tbody>


									<tr class="table">
										<th>Your Id
										</td>
										<td><%=getUser.getId()%></td>

									</tr>

									<tr class="table">
										<th>Your Name
										</td>
										<td><%=getUser.getName()%></td>

									</tr>
									<tr class="table">
										<th>Your Email Id
										</td>
										<td><%=getUser.getEmail()%></td>

									</tr>



									<tr class="table">
										<th>Your Phone no
										</td>
										<td><%=getUser.getPhoneno()%></td>
									</tr>



									<tr class="table">
										<th>Your Password
										</td>
										<td><%=getUser.getPassword()%></td>

									</tr>




								</tbody>
							</table>






						</div>






					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Edit</button>
					</div>
				</div>
			</div>
		</div>






		<%
			}

		else {
		%>



		<button type="button" class="btn btn-light mr-4"
			onclick="document.location='login.jsp'">
			<i class="fa fa-sign-in" aria-hidden="true">Login</i>
		</button>
		<button type="button" class="btn btn-light mr-4"
			onclick="document.location='signup.jsp'">
			<i class="fa fa-user-plus" aria-hidden="true">Sign Up</i>
		</button>





		<%
			}
		%>







		<!--     <button class="btn btn-outline-success mr-3" type="button" onclick="document.location='login.jsp'"><i class="fa fa-sign-in" aria-hidden="true">Login</i></button> -->
		<!--     <button class="btn btn-sm btn-outline-secondary" type="button" onclick="document.location='signup.jsp'"><i class="fa fa-user-plus" aria-hidden="true"></i> -->
		<!--     Sign Up</button> -->
	</form>









</nav>







