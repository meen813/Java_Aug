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
<title>New Ninja</title>
</head>
<body>
	<h1>New Ninja</h1>
	<div>
		<form:form action="/ninjas/new" method="POST" modelAttribute="ninja">
			<form:label path="dojo">Dojo:</form:label>
			<form:select path="dojo">
				<c:forEach var="dojo" items="${dojos}">
					<option value="${dojo.id}">${dojo.name}</option>
				</c:forEach>
			</form:select><br>
			<form:label path="firstName">First Name:</form:label>
			<form:input type="text" path="firstName"/><br>
			<form:label path="lastName">Last Name:</form:label>
			<form:input type="text" path="lastName"/><br>
			<form:label path="age">Age:</form:label>
			<form:input type="number" path="age"/><br>
			<input type="submit" value="Create Ninja">
		</form:form>
	</div>
</body>
</html>