<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Omikuji Form</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<div class="container">
		<h1>Send an Omikuji!</h1>
		<form action="/omikuji/submitOmikuji" method="post">
			<div>
				<label>Pick any number from 5 to 10</label>
				<input type="number" name="years" min="5" max="10" value="5"/>
			</div>
			<div>
				<label>Enter the name of any city.</label>
				<input type="text" name="city" required/>
			</div>
			<div>
				<label>Enter the name of any real person.</label>
				<input type="text" name="person" required/>
			</div>
			<div>
				<label>Enter professional endeavor or hobby.</label>
				<input type="text" name="hobby" required/>
			</div>
			<div>
				<label>Enter any type of living thing.</label>
				<input type="text" name="thing" required/>
			</div>
			<div>
				<label>Say something nice to someone.</label>
				<textarea name="nice" required></textarea>
			</div>
			<p>Send and show a friend</p>
			<input type="submit" value="Send" />
		</form>
	</div>
</body>
</html>