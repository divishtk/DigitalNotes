<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@include file="bootstrapandjs/bootandjs.jsp"%>
<body>
	<%@include file="allcontent/navbar.jsp"%>


	<div class="container-fluid">
	
	<%
	String email=(String)session.getAttribute("email");
	
	System.out.println("Eamil id is"+email);
	
	%>
	
		<h1 class="text-center">Hi Weclome: <%=email %></h1>
	</div>

</body>
</html>