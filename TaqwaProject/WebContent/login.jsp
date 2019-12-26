<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TAQWA THEME PARK</title>
</head>

<style>
body{
background-color: #00465B;}

h2{
text-align:center;
font-family : verdana;
color: white;
}

table{
border:3px solid grey;
border-radius:20px;
padding:20px 20px 30px 20px;
margin:-330px 60px;
font-size:20px;
color:#FFFFFF;}

img{
width: 600px;
height: 400px;
box-shadow: 0 0 0 10px rgba(0,0,0,.1);
}
</style>

<body>

<h2>TAQWA WATER THEME PARK</h2>
<td><img alt="backgroundpic" src="https://storage.letsgoholiday.my/photoscontainer/photoscontainer/postphotos/2018120529-1.png"></td>
<form method="post" action="Login">
<table align="right"> 
<pre>

<tr>
		<td style="color:#FFFFF">Username</td>
	</tr>
		<td><input type="text" name="name" size="20"></td>	
<tr>
		<td style="color:#FFFFF">Password</td>
	</tr>
		<td><input type="password" name="password" size="20"></td>	
	
	<tr>
		<td><input type="submit" value="submit"></td>
	</tr>
	<tr>
		<td><a href="signUp.jsp">sign up</a></td>
	</tr>
	

</pre>

</table>
</form>
<%@ include file="Footer.jsp" %>
</body>
</html>