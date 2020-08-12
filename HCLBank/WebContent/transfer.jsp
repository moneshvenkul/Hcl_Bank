<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Completed</title>
</head>
<body>
Money Transfered !

<%
String balance = (String) request.getAttribute("balance");
out.print("Current Balance after funding is:" + balance);
%>
<br/>
<br/>
Click here to return <a href ="welcome.jsp">Home page</a>
</body>
</html>