<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<script defer src="<%=request.getContextPath()%>/bootstrap/js/all.js"></script>

<meta charset="ISO-8859-1">
<title>Exam</title>
</head>

<body style="background-color: #e9ecef">
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

	<div class="container py-4">

		<form method="post" action="/examsubmit">
			
				<h2>select answers</h2>
				<ol>
					<c:forEach var="question" items="${questions}">
						<br>

						<li>${question.content}<input type="hidden" name="questionid"
							value="${question.qid}"><br>
							<ol type="a" class="py-3">
								<c:forEach var="answer" items="${question.answers}">
							
									<li><input type="radio" name="${question.qid}"
										value="${answer.aid}" requied> ${answer.content}</li>
									<br>

								</c:forEach>
							</ol>
						</li>

					</c:forEach>
				</ol>
				<br>
				<br>
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Save</button>
					<a href="/usercat" class="btn btn-primary btn-sm">Back</a>
				</div>
			</div>
		</form>
	
	<script src="bootstrap/js/jquery-3.5.0.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>