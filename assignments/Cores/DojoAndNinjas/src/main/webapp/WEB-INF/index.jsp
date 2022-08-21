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
<title>All Dojos</title>
</head>
<body>
	<h1>All Dojos</h1>
	<div>
		<c:forEach var="dojo" items="${dojos}">
			<p><a href="dojos/${dojo.id}"><c:out value="${dojo.name}"></c:out></a></p>
		</c:forEach>
	</div>
	<hr>
	<div>
		<p><a href="dojos/new">Create New Dojo</a></p>
		<p><a href="ninjas/new">Create New Ninja</a></p>
	</div>
</body>
</html>