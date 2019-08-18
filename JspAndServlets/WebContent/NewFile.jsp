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
	<!-- JSTL if -->
	<c:set var="num" value="100"></c:set>
	
	<c:if test="${num>5}">
	<p>This value is greater than 5</p>
	</c:if>
	
	<!-- JSTL choose-when, otherwise its similar to if else -->
	<c:choose>
		<c:when test="${num<6}">
		<p>This value is less than 10</p>
		</c:when>
		
		<c:otherwise>
		<p>This value is greater than 10</p>
		</c:otherwise>
	</c:choose>
	
</body>
</html>