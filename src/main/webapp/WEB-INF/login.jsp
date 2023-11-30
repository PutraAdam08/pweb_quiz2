<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>Login Form</title>
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	</head>
	<body>
	    <div class="container">
			<div class="row mt-5"></div>
			<div class="row mt-3"></div>
	        <div class="row justify-content-center mt-5">
	            <div class="col-md-5 mt-5">
	                <div class="border p-4" style="height: 22em;">
	                    <h2 class="mb-4 text-center">Login</h2>
	                    <form action="<%=request.getContextPath()%>/login" method="post">
	                        <div class="form-group">
	                            <label for="email">Email:</label>
	                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
	                        </div>
	                        <div class="form-group">
	                            <label for="password">Password:</label>
	                            <input type="password" class="form-control" id="password" name="password" placeholder="Enter password">
	                        </div>
	                        <div class = "row justify-content-center">
	                        	<button type="submit" class="btn btn-primary">Submit</button>
	                        </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	    </div>
	</body>
</html>