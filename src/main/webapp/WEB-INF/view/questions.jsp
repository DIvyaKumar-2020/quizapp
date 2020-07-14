<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Questions</title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script defer src="bootstrap/js/all.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
            <div class="container">
                <a href="#" class="navbar-brand">
                    <img src="image/da.jpg" alt="">MCQ
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#mymenu">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="mymenu">

                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a href="/adminhome" class="nav-link">home</a>
                        </li>
                        <li class="nav-item">
                            <a href="/category" class="nav-link">Category</a>
                        </li>
                        <li class="nav-item">
                            <a href="/questions" class="nav-link">Questions</a>
                        </li>
                        <li class="nav-item">
                            <a href="/logout" class="nav-link">logout</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
<div class="container py-4">
<h2 class="text-danger">Questions</h2><br>
<table class="table table-hover table-condensed">
  <thead class="bg-success">
    <tr>
     <th scope="col">S No.</th>
      <th scope="col">Category</th>
      <th scope="col">Question</th>
      <th scope="col"></th>
     
    </tr>
  </thead>
  <tbody>
  <c:forEach var="qs" items="${questions}">
    <tr>
    <td >${qs.qid}</td>
    <td >${qs.category.name}</td>
      <td >${qs.content}</td>
      <td><a href="/answer/${qs.qid}/${qs.content}" class="btn btn-primary btn-sm">Create Options</a></td>
      </tr>
      </c:forEach>
  </tbody>
</table>
</div>
</body>
</html>