<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Current Balance</title>
</head>
<body>
Current balance in your account:
<%
String balance =  (String) request.getAttribute("balanceRemained");
out.print(balance);
%>
<br/>
<br/>
Click here to return <a href ="welcome.jsp">Home page</a>
</body>
</html>