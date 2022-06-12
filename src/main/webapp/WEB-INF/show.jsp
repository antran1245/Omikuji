<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Omikuji Show</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<div class="container">
		<h1>Here's Your Omikuji</h1>
		<p class="display-omikuji"> In ${omikuji.get("years")} years, you will live in 
			${omikuji.get("city")} with ${omikuji.get("person")} as your roommate,
			${omikuji.get("hobby")} for living. The next time you see a ${omikuji.get("thing")}
			you will have good luck. Also ${omikuji.get("nice")}
		</p>
		<a href="http://localhost:8080/omikuji">Go Back</a>
	</div>
</body>
</html>