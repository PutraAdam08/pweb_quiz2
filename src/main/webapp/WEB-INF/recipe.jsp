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
	<div class="p-5">
					<table class="table table-bordered">
					
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Country</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="recipe" items="${listRecipe}">

                                <tr>
                                    <td>
                                        <c:out value="${recipe.id}" />
                                    </td>
                                    <td>
                                        <c:out value="${recipe.nameRecipe}" />
                                    </td>
                                    <td>
                                        <c:out value="${recipe.ingridient}" />
                                    </td>
                                    <td>
                                        <c:out value="${recipe.type}" />
                                    </td>
                                    <td><a href="edit?id=<c:out value='${user.id}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
                                    </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>
                    </table>
				</div>
</body>
</html>