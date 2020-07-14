<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.myDiv{
    width:100%;
    height:100%;
    background:;#98FB98;
}
</style>
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script defer src="/bootstrap/js/all.js"></script>

<meta charset="ISO-8859-1">
<title>adminhome</title>
</head>
<body>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
            <div class="container">
                <a href="/" class="navbar-brand">
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

<br>
<div class="container justify-content-center text-center">
<div style="background-color:#beeabe;height:40px; font-family:Times New Roman">

<p class="text-center">you are logged in as admin...</p>
</div></div>
<div class="container py-4">

<ul class="list-group">
  <li class="list-group-item"><a href="/adminhome">Home</a></li>
  <li class="list-group-item"><a href="/category">Categories</a></li>
  <li class="list-group-item"><a href="/questions">Questions</a></li>
  <li class="list-group-item"><a href="/logout">Logout</a></li>
  
</ul>
</div>
</body>
</html>