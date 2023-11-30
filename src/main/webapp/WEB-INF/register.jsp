<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Registration Form</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	</head>
	<body>
		<div class="container">
			<div class="row mt-3"></div>
			<div class="row mt-5"></div>
			<div class="row mt-5 justify-content-center">
				<form action="<%= request.getContextPath() %>/register" method="post" class="border p-4" style="width: 36em; height: 32em;" >
					<h2 class="text-center">Registration Form</h2>
					<div class="row mb-4"></div>
					<div class="form-group">
						<label for="username">Name:</label>
						<input type="text" class="form-control" id="name" placeholder="Enter name">
					</div>
					<div class="row mb-2"></div>
					<div class="form-group">
						<label for="password">Password:</label>
						<input type="password" class="form-control" id="password" placeholder="Enter password">
					</div>
					<div class="row mb-2"></div>
					<div class="form-group">
						<label for="email">Email:</label>
						<input type="email" class="form-control" id="email" placeholder="Enter email">
					</div>
					<div class="row mt-5 justify-content-center">
						<button type="submit" class="btn btn-primary">Register</button>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>
