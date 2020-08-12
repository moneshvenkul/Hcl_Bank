<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome page</title>
</head>
<body>

<%
		String username = null, customerId = null;
		String sessionID = null;

		username = request.getSession().getAttribute("username").toString();
		customerId = request.getSession().getAttribute("cusId").toString();
		sessionID = request.getSession().getId();
%>

Welcome <%=username%> !<br />


		<ul>
          <li><a href="${pageContext.request.contextPath}/operation?page=history&cusId=<%= customerId %>">Transactions History</a></li>  
          <li><a href="${pageContext.request.contextPath}/operation?page=balance&cusId=<%= customerId %>">Balance</a></li>
          <li><a href="fundTransfer.jsp">Fund Transfer</a></li>
          <li><a href="${pageContext.request.contextPath}/operation?page=destroy">Logout</a></li>
        </ul>
</body>
</html>