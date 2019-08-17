<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>This is first jsp file</h1>
	<!-- <p><%= request.getAttribute("name") %></p> -->
	<h6>Hello, <%
		String fullName=request.getAttribute("name").toString();
		out.println(fullName);
	%></h6>
	
	<!-- Example for jsp expression- this is for single line -->
	<%=2*2 %>
	<h3>the value of 4>3<%=4>3 %></h3>
	
	<!-- Example for jsp scriplets - this is for multiple line code-->
	<%
		for(int i=1;i<=10;i++)
		{
			out.println("<p>the value of i is"+ i +"</p>");
		}
	%>
	
	<!-- Example for jsp declaration - this is for function declartion -->
	<%!
		int callLength(String st)
		{
		return st.length();
		}
	%>
	
	<p>the length of the string st is <%= callLength("Tamil") %></p>
</body>
</html>