<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="bootstrapandjs/bootandjs.jsp"%>

</head>
<body>




	<div class="container-fluid p-0">
		<%@include file="allcontent/navbar.jsp"%>

		<h1 class="text-center mt-4">Add Notes Here</h1>



		<%
		Users userDetails=(Users)session.getAttribute("usersDetails");
		%>
		

<input type="hidden" value=<%=userDetails.getId()%> name="uid">

		<div class="container mt-5">
			<div class="row">

				<div class="col-md-12">


					<form action="addNotesServlet" method="POST">
						<div class="form-group">
							<label for="exampleInputEmail1">Your Note Title:</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Enter title" name="title">
						</div>
						
						
						<div class="form-group">
							<label for="exampleInputEmail1">Description:</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Enter description" name="description">
						</div>


						<div class="form-group">
							<label for="exampleInputEmail1">Your Content:</label>

							<textarea rows="9" cols="" class="form-control"
								placeholder="Enter Content here" name="content"></textarea>



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