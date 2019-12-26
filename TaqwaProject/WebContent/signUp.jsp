<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
</head>
<style>
body{
background-color: #00465B;
}

h2, h3{
text-align:center;
font : inconsonata, monospace;
color: white;
}

table{
color: #FFFFFF;
font-size:20px;
border:3px solid grey;
border-radius:20px;
padding:30px 20px 30px 20px
}

</style>

<body>
<%@ include file="Header.jsp" %>

<form method="post" action="login.jsp">

<table align="center">
	<tr>
		<td>Name</td>
		<td>:</td>
		<td><input type="text" name="name" size="20"></td>
	</tr>
	
	<tr>
		<td>Phone No</td>
		<td>:</td>
		<td><input type="text" name="phoneno" size="20"></td>
	<tr>
	
	<tr>
		<td>Email</td>
		<td>:</td>
		<td><input type="email" name="email" size="20"></td>
	</tr>
	
	<tr>
		<td>Password</td>
		<td>:</td>
		<td><input type="password" name="password" size="20"></td>
	</tr>
	
	<tr>
		<td>Confirm Password</td>
		<td>:</td>
		<td><input type="password" name="password" size="20"></td>
	</tr>
	
	<td><input type="submit" value="Sign Me Up!"></td>
	
</table>
</form>

<%@ include file="Footer.jsp" %>
</body>
</html>