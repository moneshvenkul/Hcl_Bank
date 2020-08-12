<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Updated Balance</title>
</head>
<body>
Updated Balance:
<%
	String updatedBalance = (String) request.getAttribute("balance");
	out.print(updatedBalance);

%>
<br/>
<br/>
Click here to return <a href ="welcome.jsp">Home page</a>
</body>
</html>