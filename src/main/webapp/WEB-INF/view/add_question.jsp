<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script defer src="/bootstrap/js/all.js"></script>

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
<h3 class="text-success">Category : <strong class="text-danger">${cname}</strong></h3><br>
<form method="post" action="/addquestion/${cid}" modelattribute="question">
 
  <div class="form-group">
    <label>Question</label>
    <input type="text" name="content" class="form-control" placeholder="Type your question here...">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
 <script src="bootstrap/js/jquery-3.5.0.min.js" type="text/javascript"></script>
 <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>