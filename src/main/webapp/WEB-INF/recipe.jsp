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
            <a class="nav-link" href="/pweb-quiz2/recipe">Recipe</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/pweb-quiz2/profile">Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/pweb-quiz2/logout">Logout</a>
          </li>
        </ul>
      </div>
    </div>
 </nav>
	<div class="p-5">
	<%@ page import ="java.util.ArrayList"%>
	<%@ page import ="javaguides.recipe.model.Recipe"%>
	<%@ page import = "javaguides.recipe.dao.RecipeDao" %>
	
		<%
			ArrayList<Recipe> listRecipe = (ArrayList<Recipe>) request.getAttribute("listRecipe");
		%>
					<table class="table table-bordered">
					
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Ingridient</th>
                                <th>Step</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <%
                            for (Recipe recipe : listRecipe) {
                                int id = recipe.getId();
                                String name = recipe.getRecipeName();
                                String ingridient = recipe.getIngridient();
                                String step = recipe.getStep();
                            %>
	                            <tr>
					                <td><%= id %></td>
					                <td><%= name %></td>
					                <td><%= ingridient %></td>
					                <td><%= step %></td>
					            </tr>
					        <%
					            }
					        %>
                            <!-- } -->
                        </tbody>
                    </table>
				</div>
</body>
</html>