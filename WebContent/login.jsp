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


	<div class="container-fluid mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">

				<div class="card mt-5">

					<div class="card-header custom">

						<h5 class="text-center">
							<i class="fa fa-sign-in mr-2" aria-hidden="true"></i>SIGN IN
						</h5>


					</div>




			


					<%
						String failmsg = (String) session.getAttribute("FailedToLogin");

					System.out.println(failmsg);

					if (failmsg != null) {
					%>




					<div class="alert alert-danger" role="alert"><%=failmsg%>

					</div>



					<%
						}

					session.removeAttribute("FailedToLogin");
					%>
					
					
					
					
					
					
					<%
					
					String loginfirst=(String)session.getAttribute("loginFirst");
					
					
					if(loginfirst!=null)
					{%>
						
						
						<div class="alert alert-danger" role="alert"><%=loginfirst%>

					</div>
						
						
						
				<%	}
					session.removeAttribute("loginFirst");
					
					%>
					
					
					
					
			
					
					
				<%	
							
				String loggedOutSuccesfully=(String)session.getAttribute("msg");
					
					
					if(loggedOutSuccesfully!=null)
					{%>
						
						
						<div class="alert alert-danger" role="alert"><%=loggedOutSuccesfully%>

					</div>
						
						
						
				<%	}
					session.removeAttribute("msg");
					
					%>
					


					<div class="card-body">

						<form action="logingServlet" method="POST">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email Id"
									name="email" required> <small id="emailHelp"
									class="form-text text-muted">We'll never share your
									email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="password" required>
							</div>

							<button type="submit" class="btn btn-secondary btn-block">Log
								in</button>
						</form>



					</div>




				</div>

			</div>

		</div>
	</div>
</body>
</html>