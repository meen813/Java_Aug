<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fruity Loop</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	
	
		<table class="table">
			<thead>
				<th>Name</th>
				<th>Price</th>
			</thead>
			<tbody>
				<c:forEach var = "fruit" items ="${fruits}" >	
    			<tr>
      				<td><c:out value="${fruit.getName()}"/></td>
      				<td><c:out value="${fruit.getPrice()}"/></td>
    			</tr>
				</c:forEach>
		</table>
		
	
	<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>