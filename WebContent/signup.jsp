<%@page import="com.DB.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="bootstrapandjs/bootandjs.jsp"%>

</head>
<body>

	<%
		// Connection con;  JUST FOR CHECKING GETTIN CONNECTION OR NOT
	// con=DBConnection.getConnection();
	// System.out.println("Got Connection :"+con);
	%>

	<%@include file="allcontent/navbar.jsp"%>


	<div class="container">

		<div class="row">

			<div class="col-md-6 offset-md-3">


				<div class="card mt-5">
					<div class="card-header custom">
						<h5 class="text-center">
							<i class="fa fa-user-plus mr-2" aria-hidden="true"></i>SIGN UP
						</h5>



					</div>





					<%
						String regMsg = (String) session.getAttribute("signup-success");

					if (regMsg != null) {
					%>


					<div class="alert alert-danger" role="alert"><%=regMsg%></div>



					<%
						session.removeAttribute("signup-success");
						}%>
						
						
						
							<%
						String failure = (String) session.getAttribute("signup-fail");

					if (failure != null) {
					%>


					<div class="alert alert-danger" role="alert"><%=failure%></div>



					<%
					session.removeAttribute("signup-fail");

						}%>
						







					<div class="card-body">
						<form action="SignUp" method="POST">


							<div class="form-group">
								<label for="exampleInputEmail1">Full Name</label> <input
									type="text" class="form-control"  id="name"
									aria-describedby="name" placeholder="Enter Full Name"
									name="name" required> <small id="name"
									class="form-text text-muted">We'll never share your
									name with anyone else.</small>
							</div>



							<div class="form-group">
								<label for="exampleInputEmail1">Phone Number</label> <input
									type="text" class="form-control" id="no"
									aria-describedby="name" placeholder="Enter Number" name="phone"  required>
								<small id="no" class="form-text text-muted">We'll never
									share your number with anyone else.</small>
							</div>



							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									name="email"  required> <small id="emailHelp"
									class="form-text text-muted">We'll never share your
									email with anyone else.</small>
							</div>





							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="password"  required>
							</div>
							<div class="col-md-6 offset-md-3">

							<button type="submit" class="btn btn-primary   ">Sign
								Up</button>
								<button type="reset" class="btn btn-primary  ">Reset
								</button>
								</div>
						</form>

					</div>


				</div>


			</div>

		</div>

	</div>



</body>
</html>