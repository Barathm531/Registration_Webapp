<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>

<link rel="stylesheet" href="css/style.css">
<%@include file="components/common_css_js.jsp"%>
</head>
<body>
	<%@include file="components/navbar.jsp"%>
	<div class="container">
		<div class="row mt-5">
			<div class="col-md-4 offset-md-4">
				<%@include file= "components/message.jsp" %>
			
				<h3 class="text-center my-2">Login Here</h3>

				<form method="post" action="login">
					<div class="form-group">
						<label for="exampleInputEmail1">Email address</label> <input
							name="email" type="email" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Enter email">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							name="password" type="password" class="form-control"
							id="exampleInputPassword1" placeholder="Password">

					</div>
						<div class="text-center">
						
					<a href="register.jsp">If not Registered <strong>Click Here</strong> </a>
					</div>
					
					<div class="container text-center mt-2">
						<button type="submit" class="btn btn-primary">Submit</button>
						<button type="reset" class="btn btn-primary">Reset</button>
					</div>
				</form>

			</div>

		</div>

	</div>
</body>
</html>