<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><c:out value="${dojo.name}"></c:out></title>
</head>
<body>
	<h1><c:out value="${dojo.name}"></c:out> Location Ninjas</h1>
	<hr>
		<table>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Age</th>
		</tr>
		<c:forEach var="ninja" items="${dojo.ninjas}">
			<tr>
				<td><c:out value = "${ninja.firstName}"></c:out></td>
				<td><c:out value = "${ninja.lastName}"></c:out></td>
				<td><c:out value="${ninja.age}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
	<div>
		<p><a href="/ninjas/new">Create New Ninja</a></p>	
	</div>
</body>
</html>