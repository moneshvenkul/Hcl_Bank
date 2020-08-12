<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/home" method="post">
		
		<p><font color="red">${successMessage}</font></p>
		Username: <input type="text" name="username" placeholder="username" required="required">
		<br/>
		Password: <input type="password" name="password" placeholder="password" required="required">
		<br/>
		
		<input type="hidden" name="action" value="loginsubmit">
		
		<input type="submit" name="submit" id="submit" value="Login"/>
		<p>
			New User ? <a href="index.jsp" >Signup here</a>
        </p>
        </form>

</body>
</html>