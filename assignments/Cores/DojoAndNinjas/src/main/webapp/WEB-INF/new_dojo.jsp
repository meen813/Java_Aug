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
<title>New Dojo</title>
</head>
<body>
	<h1>New Dojo</h1>
	<div>
		<form:form action="/dojos/new" method="POST" modelAttribute="dojo">
			<form:label path="name">Dojo Name:</form:label>
			<form:input type="text" path="name"/>
			<input type="submit" value="Create Dojo">
		</form:form>
	</div>
</body>
</html>