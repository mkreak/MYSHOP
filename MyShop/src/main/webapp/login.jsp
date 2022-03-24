<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/signup-style.css">

<title>Login</title>
</head>
<body>
<div id="container">
	<div class="signup">
		<form action="loginAction.jsp" method="post">
			<input type="email" name="email" placeholder="Enter Email ID"required>
			<input type="password" name="password" placeholder="Enter Password" required>
			<input type="submit" value="Login">
		</form>
	<h2><a href="signup.jsp">Signup</a></h2>
	<h2><a href="forgotPassword.jsp">Forgot Password</a></h2>
	</div>
	
	<div class="whysignLogin">
	<%
	String msg=request.getParameter("msg");
	if("notexist".equals(msg)){
	%>
	<h1>Incorrect Username or Password</h1>
	<%}
	if("invalid".equals(msg)){
	%>
	<h1>Something went Wrong! Try again!</h1>
	<%} %>
	<h2>Online Shopping</h2>
	<p>India's best Shopping platform</p>
	</div>
</div>

</body>
</html>