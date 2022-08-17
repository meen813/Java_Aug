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
<title>Show Expense</title>
</head>
<body>
 <!-- try to use <c:out> instead of $ for a security purpose--> 
	<h1>Expense Details</h1>
	<a href="/expenses">Go back</a>
	<p>Expense Name: ${ expense.title }</p>
	<p>Expense Description: ${ expense.description }</p>
	<p>Vendor: ${ expense.vendor }</p>
	<p>Amount Spent: ${ expense.amount }</p>
	
</body>
</html>