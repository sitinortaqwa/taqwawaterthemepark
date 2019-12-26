<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
body{
background-color: #00465B;}

h3, h4{
text-align:center;
font-family : 'Fjalla One', sans-serif;
color: white;
}

img{
	border-radius: 30%;
    box-shadow: 0 0 0 10px rgba(0,0,0,.1);
    margin: 10px;
    width: 200px; 
    height: 200px;
}
</style>

<body>
<a href="http://localhost:8081/TaqwaProject/login.jsp">Logout</a>
<%@ include file="Header.jsp" %>

<h2 align="center">Hi Azma!</h2>
<h3 align="center">TAQWA THEME PARK</h3>
<h4 align="center">PACKAGES</h4>
<table align="center">
	<tr>
		<td><img alt="tickets" src="http://1000islandsplayhouse.com/assets/buy-now-480x176.jpg" ></td>
		<td><img alt="room" src="https://media-cdn.tripadvisor.com/media/photo-s/10/05/a7/4e/quads-room.jpg"></td>
	</tr>
		<form method="post" action="ticket.jsp">
		<td align="center"><input type="submit" name="button1" value="EXPLORE THE THEME PARK!"></td>
		</form>
		
		<form method="post" action="room.jsp">
		<td align="center"><input type="submit" name="button2" value="GET YOUR ROOM!"></td>	
		</form>
		
	<tr>
		<td><img alt="tickets" src="https://d2ile4x3f22snf.cloudfront.net/wp-content/uploads/sites/151/2018/01/25052756/IMG_6605.jpg" style="margin-top: 20px;"></td>
		<td><img alt="tickets" src="https://multichannelmerchant.com/wp-content/uploads/2014/07/green-shopping-cart-button-300.jpg" style="margin-top: 20px;"></td>
	</tr>
	
		<form method="post" action="firstCafe.jsp">
		<td align="center"><input type="submit" name="button3" value="CAFE SERVICES"></td>
		</form>
		
		<form method="post" action="">
		<td align="center"><input type="submit" name="button4" value="CART"></td>
		</form>
		
	
	
</table> 


<%@ include file="Footer.jsp" %>
</body>
</html>