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
<div class="container py-4">
<h3 class="text-success">question: <strong class="text-danger">${question}</strong></h3><br>
<form method="post" action="/addoptions/${qid}">
 
  <div class="form-group">
    <label>Question</label>
    <input type="text" name="content" class="form-control" placeholder="give options here...">
  </div>
  
  <div class="form-check">
  <input class="form-check-input" type="radio" name="option" value="true">
  <label class="form-check-label">
    Right Answer
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="option" value="false">
  <label class="form-check-label" >
    wrong option
  </label>
</div>
<br>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
 <script src="bootstrap/js/jquery-3.5.0.min.js" type="text/javascript"></script>
 <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>