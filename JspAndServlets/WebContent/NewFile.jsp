<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test</title>
</head>
<body>
	<!-- table - list of student -->
	<table border="1">
		<thead>
			<tr>
				<th>Name</th>
				<th>Age</th>
				<th>Place</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${stlist}" var="student">
				<tr>
					<td>${student.name}</td>
					<td>${student.age}</td>
					<td>${student.location}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	
</body>
</html>