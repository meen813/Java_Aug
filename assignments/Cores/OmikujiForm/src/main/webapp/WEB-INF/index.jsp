<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Send an Omikuji</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<div class="container card mt-2 col-md-12">
	<h1>Send an Omikuji!</h1>
	
	<form action="/formProcess" method = "post" class="container" >
		<div class = "mt-2 col-md-12">
			<label for="number">
				Pick any number from 5 to 25
			</label><br>
			<input type="number" id="number" name="number"/>
		</div>
		<div class = "mt-2 col-md-12">
			<label for="city">
				Enter the name of any city.
			</label><br>
			<input type="text" id="city" name="city"/>
		</div>
		
		<div class = "mt-2 col-md-12">
			<label for="person">
				Enter the name of any real person.
			</label><br>
			<input type="text" id="person" name="person"/>
		</div>
		
		<div class = "mt-2 col-md-12">
			<label for="hobby">
				Enter professional endeavor or hobby.
			</label><br>
			<input type="text" id="hobby" name="hobby"/>
		</div>
		
		<div class = "mt-2 col-md-12">
			<label for="type">
				Enter any type of living thing.
			</label><br>
			<input type="text" id="type" name="type"/>
		</div>
		
		<div class = "mt-2 col-md-12">
			<label for="somethingNice">
				say something nice to someone.
			</label><br>
			<input type="text" id="somethingNice" name="somethingNice"/>
		</div><br>
			<p>Send and show a friend</p>
            <button type="submit" class="btn-primary">
                Send
            </button>
	</form>
	</div>
	
	
	
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>