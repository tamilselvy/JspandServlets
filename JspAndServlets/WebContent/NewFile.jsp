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
	<!-- EL expression -->
	<p>The value for 2*2 is ${2*2}</p>
	<h1>Hello, ${name}</h1>
	<h4>Name - ${st.name}</h4>
	<h4>Age - ${st.age}</h4>
	<h4>Place - ${st.location}</h4>
	
	<!--out - Used to display content in browser -->
	<p><c:out value="TS"></c:out></p>
	
	<!-- set- Used to set value to a variable -->
	<c:set var="x" value="100"></c:set>
	<p><c:out value="${x}"></c:out></p>
	
	<!-- remove- Used to remove the variable -->
	<c:remove var="x"/>
	<p><c:out value="${x}"></c:out></p>
	
	<!-- url- used to navigate to diff pages -->
	<a href="<c:url value="/index.html"></c:url>">Click here
	</a>
	
	<!-- forEach loop -->
	<c:forEach items="${col}" var="color">
	<p>Color = ${color}</p>
	</c:forEach>
	
	<!-- forEach loop - list -->
	<c:forEach items="${stlist}" var="student">
		<p>Student name = ${student.name}</p>
		<p>Student age = ${student.age}</p>
		<p>Student place = ${student.location}</p>
		<hr>
	</c:forEach>
	
</body>
</html>