<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
      <a class="navbar-brand" href="#">Recipe.Finder</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link" href="/pweb-quiz2/home">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Recipe</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/pweb-quiz2/logout">Logout</a>
          </li>
        </ul>
      </div>
    </div>
 </nav>
	<div class="container-fluid">
	  <div class="row gap-5 justify-content-center" style="height: 100vh;">
	    <div class="col-md-3 bg-secondary">
	    		<div class="mb-5"></div>
	    		<div class="p-3" style="position: fixed; width: 22em;">
		          <h3 class="text-center">MyProfile</h3>
		          <form>
		            <div class="form-group" id="FormName">
		              <div class="row">
		                <div class="col">
		                  <label for="name">Name</label>
		                  <input type="text" class="form-control" id="name" placeholder="John Doe" disabled>
		                </div>
		              </div>
		            </div>
		            <div class="form-group" id="FormEmail">
		              <div class="row">
		                <div class="col">
		                  <label for="email">Email</label>
		                  <input type="email" class="form-control" id="email" placeholder="johndoe@example.com" disabled>
		                </div>
		              </div>
		            </div>
		          </form>
		       	
		          <div class="text-center">
		            <button type="button" class="btn btn-primary mt-2">Edit</button>
		          </div>
		   	</div>
	    </div>
	
	    <div class="col">
	      <div class="row mt-5"></div>
	      <div class="row mt-3 p-5">
	        <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Ingridient</th>
                                <th>Step</th>
                            </tr>
                        </thead>
            </table>
	      </div>
	    </div>
	  </div>
	</div>
</body>
</html>