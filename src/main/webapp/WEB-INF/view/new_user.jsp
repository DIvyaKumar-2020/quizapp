<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script defer src="bootstrap/js/all.js"></script>
</head>
<body>
<h2 class="text-success py-5 bg-dark" align="center">Online Quiz Application</h2><br>
<div class="container">
	<h2>Sign Up</h2><br>
<form method="post" action="/userreg">
  <div class="form-group">
    <label>Name</label>
    <input type="text" class="form-control" name="name" placeholder="Enter Name">
    
  </div>
  <div class="form-group">
    <label>User Name</label>
    <input type="text" class="form-control" name="username" placeholder="Enter User Name">
  </div>
  
  <div class="form-group">
    <label>Password</label>
    <input type="password" class="form-control" name="password" placeholder="Enter Password">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</body>
</html>