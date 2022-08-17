<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Edit Expense:</h1>
	<form:form action="/process/update/expenses/${expense.id}" method="post" modelAttribute="expense">
		<input type="hidden" name = "_method" value="put"/>
		<div>
			<form:label path="title">Expense:</form:label>
			<form:errors path="title"  class="text-danger"/>
			<form:input path="title"/>
		</div>
		<div>
			<form:label path="vendor">Vendor:</form:label>
			<form:errors path="vendor"  class="text-danger"/>
			<form:input path="vendor"/>
		</div>		
		<div>
			<form:label path="amount">Amount:</form:label>
			<form:errors path="amount"  class="text-danger"/>  
			<form:input type ="number" path="amount" />
		</div>
		<div>
			<form:label path="description">Description:</form:label>
			<form:errors path="description"  class="text-danger"/>
			<form:input path="description" />
		</div>
		<input type="submit" value="submit" class="btn-primary"/>
	</form:form>
</body>
</html>