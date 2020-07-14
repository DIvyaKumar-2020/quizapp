<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UserHome</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<script defer src="bootstrap/js/all.js"></script>
</head>
<body>
	<%
		String name = (String) session.getAttribute("username");
	%>

	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
		<div class="container">
			<a href="/" class="navbar-brand"> <img src="image/da.jpg" alt="">MCQ
			</a>
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#mymenu">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="mymenu">

				<ul class="navbar-nav">
					<li class="nav-item"><a href="/usercat" class="nav-link">home</a>
					</li>

					<a href="/logout" class="nav-link">logout</a>
					</li>

				</ul>
			</div>
		</div>
	</nav>
	<br>
	<h3 align="center" class="text-success">
		welcome
		<%=name%>!
	</h3>
	<div class="container py-4">
		<h2 class="text-danger">Select a category</h2>
		<br>
		<ul class="list-group">
			<c:forEach var="cat" items="${category}">
				<li class="list-group-item"><a
					href="/exam/${cat.id}/${cat.name}">${cat.name}</a></li>
			</c:forEach>

		</ul>
	</div>
	<!--  <div class="container py-4">
<h2 class="text-success">Select a category</h2><br>
<table class="table table-hover table-condensed">
  <thead class="bg-dark text-light">
    <tr>
     <th scope="col">S No.</th>
      <th scope="col">Category</th>
      <th scope="col"></th>
     
    </tr>
  </thead>
  <tbody>
  <c:forEach var="cat" items="${category}">
    <tr>
    <td >${cat.id}</td>
      <td >${cat.name}</td>
      <td><a href="/exam/${cat.id}/${cat.name}" class="btn btn-primary btn-sm">Start Quiz</a></td>
      </tr>
      </c:forEach>
  </tbody>
</table>
</div>-->
	S
</body>
</html>