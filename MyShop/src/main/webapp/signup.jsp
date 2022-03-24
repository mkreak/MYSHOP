<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>

<div id="container">
	<div class="signup">
		<form action="signupAction.jsp" method="post">
		<input type="text" name="name" placeholder="Enter Name"required>
		<input type="email" name="email" placeholder="Enter Email ID"required>
		<input type="number" name="mobilenumber" placeholder="Enter Mobile Number"required>
		<select name="SecurityQuestion" required>
		<option value="What is your mother's maiden name?">What is your mother's maiden name?</option>
		<option value="What is your first pet name?">What is your first pet name?</option>
		</select>
			<input type="text" name="answer" placeholder="Enter Answer" required>
			<input type="password" name="password" placeholder="Enter Password" required>
			<input type="submit" value="Signup">

		</form>
	<h2><a href="login.jsp">Login</a></h2>
	</div>
<div class="whysign">
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
%>
<h1>Successfully Login</h1>
<%} 
if("invalid".equals(msg)){
	
%>
<h1>Something went Wrong! Try Again!</h1>
<%} %>
<h2>Online Shopping</h2>
<p>India's best Shopping platform</p>
</div>

</div>
</body>
</html>