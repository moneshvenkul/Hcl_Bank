<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/home" method="post">
		
		<p><font color="red">${errorMessage}</font></p>
		Email: <input type="text" name="email" placeholder="email" required="required">
		<br/>
			
		Username: <input type="text" name="username" placeholder="username" required="required">
		<br/>
		
		Password: <input type="password" name="password" placeholder="password" required="required">
		<br/>
		
		Re-enter Password: <input type="password" name="re_password" placeholder="password" required="required">
		<br/>
		<input type="hidden" name="action" value="signupSubmit">
		<input type="submit" name="submit" id="submit" value="Signup"/>
		<p>
			Have already an account ? <a href="login.jsp">Login here</a>
        </p>
		
	</form>		
</body>
</html>