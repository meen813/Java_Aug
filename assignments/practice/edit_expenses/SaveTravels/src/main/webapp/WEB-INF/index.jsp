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
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<h1>Save Travels</h1>
	<table class="table mt-2 col-md-12">
    	<thead>
        	<tr>
            	<th>Expense</th>
            	<th>Vendor</th>
            	<th>Amount</th>
            	<th>Actions</th>
        	</tr>
    	</thead>
    	<tbody>
    		<c:forEach var="expense" items="${expenses}">
    			<tr>
    				<td><c:out value = "${ expense.title }" ></c:out> </td>
    				<td><c:out value = "${ expense.vendor }" ></c:out> </td>
    				<td><c:out value = "${ expense.amount } " ></c:out> </td>
    				<td><a href="/expenses/edit/${expense.id}"> Edit </a></td>
    			</tr>
    		</c:forEach>
    	</tbody>
	</table>

	<h1>Add an expense:</h1>
	<form:form action="/expenses" method="post" modelAttribute="expense">
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
		<div >
			<form:label path="description">Description:</form:label><br>
			<form:errors path="description"  class="text-danger"/>
			<form:textarea style="width:250px;" rows="3" path="description" />
		</div>
		<input type="submit" value="submit" class="btn-primary"/>
	</form:form>
	
	
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>