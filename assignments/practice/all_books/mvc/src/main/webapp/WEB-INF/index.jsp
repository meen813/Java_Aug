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
</head>
<body>

<h1>All Books</h1>
<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Language</th>
            <th>Number of Pages</th>
        </tr>
    </thead>
    <tbody>
    	<c:forEach var="book" items="${books}">
    		<tr>
    			<td><c:out value = "${ book.id }" ></c:out> </td>
    			<td><c:out value = "${ book.title }" ></c:out> </td>
    			<td><c:out value = "${ book.language }" ></c:out> </td>
    			<td><c:out value = "${ book.numberOfPages} " ></c:out> </td>
    		</tr>
    	</c:forEach>
    </tbody>
</table>

</body>
</html>