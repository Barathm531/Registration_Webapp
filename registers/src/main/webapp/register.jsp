<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>

<link rel="stylesheet" href="css/style.css">
<%@include file="components/common_css_js.jsp"%>
</head>
<body>
	<%@include file="components/navbar.jsp"%>
	<div class="row mt-5">
		<div class="col-md-4 offset-md-4 ">
		
		<%@include file ="components/message.jsp" %>

			<h3 class="text-center my-2">Register Here</h3>

			<form action="reg" method="post">
			
				<div class="form-group">
				
					<label for="name">Name</label> <input name="name"  type="name"
						class="form-control" id="name" placeholder="Enter here"> 
				    
				    <label for="email">Email</label> <input name="email" type="email" class="form-control"
						id="email" placeholder="Enter here"> 
						
					<label for="password">Password</label>
					<input name="password" type="password" class="form-control" id="password"
						placeholder="Enter here"> 
						
						<label for="phone">Phone
						Number</label> <input name="phone" type="phone" class="form-control" id="phone"
						placeholder="Enter here"> 
						
						<label for="address">Address</label>
					<textarea name="address" style="height: 80px;" class="form-control"
						placeholder="Enter address"></textarea>


				</div>
				<div class="container text-center">
					<button class="btn btn-success">Register</button>
					<button class="btn btn-warning">Reset</button>
					<div class="container text-center">

						<%
							if (request.getAttribute("Msg") != null) {
								out.println(request.getAttribute("Msg"));
							}
						%>

					</div>


				</div>
			</form>

		</div>

	</div>


</body>
</html>