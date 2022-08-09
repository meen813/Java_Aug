<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	
	
	<div class="container card mt-2 col-md-12" >
	<h1>Here's Your Omikuji</h1>
		<p>In <c:out value="${number}" /> years, you will live in <c:out value="${city}" /> with <c:out value="${person}"/> as your roommate, <c:out value="${hobby}"/> for a living. The next time you see a <c:out value="${type}"/>, you will have good luck. Also, <c:out value="${somethingNice}"/>
		</p>
		<a href="/omikuji">Go Back</a>	
	</div>
	
	
	
	
	
	<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>