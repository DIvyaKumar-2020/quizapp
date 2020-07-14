<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script defer src="<%=request.getContextPath()%>/bootstrap/js/all.js"></script>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="ISO-8859-1">
<title>Result</title>
</head>
<body style="background-color: black">
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
                            <a href="/usercat" class="nav-link">home</a>
                        </li>
                        
                            <a href="/logout" class="nav-link">logout</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>

<%String user=(String)session.getAttribute("username"); %>
<br>
<div class="container py-4">
<div class="jumbotron"><h3 class="text-success">congratulation <%=user %> ! you completed the quiz</h3><br>
	<h2 class="text-danger">your score : ${result} / 5</h2>
	</div>
	</div>
</body>
</html>