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
	<%@include file="allcontent/navbar.jsp"%>


	<div class="container-fluid">
		<div class="row">
			<div class="col-md-5 offset-md-4">

				<div class="card mt-5">

					<div class="card-header custom">

						<h5 class="text-center">
							<i class="fa fa-sign-in mr-2" aria-hidden="true"></i>SIGN IN
						</h5>


					</div>
					<div class="card-body">

						<form action="logingServlet" method="POST">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email Id" name="email">
								<small id="emailHelp" class="form-text text-muted">We'll
									never share your email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="password">
							</div>
							
							<button type="submit" class="btn btn-primary btn-block">Log in</button>
						</form>



					</div>




				</div>

			</div>

		</div>
	</div>
</body>
</html>