<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Fjalla+One|Inconsolata&display=swap" rel="stylesheet">
<meta charset="ISO-8859-1">
<style type="text/css">
	body{
		background-color:#00465B;
		font: inconsonata, monospace;
		color: white;
		
	}
	table{
		border:2px solid silver;
		
	}
</style>
<title>> Ticket </title>

</head>
<body style="">
<%@ include file="Header.jsp" %>

	<h2 align="center">TAQWA THEME-PARK TICKET</h2>
	<br><br>
	
	<form method="post" action="outputTicket.jsp">
	<table align="center" style="">
		
		<tr>
			<td colspan=2 align="center">BUY YOUR TICKET HERE!</td>
		</tr>
		<tr>
			<td> </td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			
		</tr>
		
		<tr>
			<td align="center">CHILD(0-12) : </td>
			<td align="center"><input type="text" width="1px" name="child"></td>
			<td>X</td>
			<td>RM30.00</td>
			
		</tr>
		
		<tr>
			<td align="center">ADULT(13-60) : </td>
			<td align="center"><input type="text" width="1px" name="adult"></td>
			<td>X</td>
			<td>RM70.00</td>
			
		</tr>
		
		
		<tr>
			<td align="center">SENIOR(60 above) : </td>
			<td align="center"><input type="text" width="1px" name="senior"></td>
			<td>X</td>
			<td>RM50.00</td>
			
		</tr>
		<tr>
			<td colspan=5 align="center">TOTAL:</td>
		</tr>
		
		<tr>
			<td colspan=6 align="center"><input type="submit" value="Add To Cart"></td>
		</tr>
	</table>
	</form>

	
<%@ include file="Footer.jsp" %>
</body>
</html>