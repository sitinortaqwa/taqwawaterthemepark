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

<%! int totalAdult;
	int totalChild;
	int totalSenior;
	%>
<%int adult = Integer.parseInt(request.getParameter("adult"));%>
<%int child = Integer.parseInt(request.getParameter("child"));%>
<%int senior = Integer.parseInt(request.getParameter("senior"));%>

<%
if(adult != 0){
	
	totalAdult=adult * 70;
}
else if(child != 0){
	
	totalChild =child * 30;
}
else if(senior != 0){
	
	totalSenior=senior * 50;
}

%>
<jsp:include page="ticket.jsp" flush="true"/>

<h2 align="center">PRINTED TICKET :)</h2>
	<br><br>
	
	
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
			<td>Price(RM)</td>
		</tr>
		
		<tr>
			<td align="justify">CHILD(0-12) : </td>
			<td ><%=child%></td>
			<td>X</td>
			<td>RM30.00</td>
			<td>|</td>
			<td><%=totalChild%></td>
			
			
		</tr>
		
		<tr>
			<td align="justify">ADULT(13-60) : </td>
			<td ><%=adult%></td>
			<td>X</td>
			<td>RM70.00</td>
			<td>|</td>
			<td><%=totalAdult%></td>
			
		</tr>
		
		
		<tr>
			<td align="justify">SENIOR(60 above) : </td>
			<td ><%=senior%></td>
			<td>X</td>
			<td>RM50.00</td>
			<td>|</td>
			<td><%=totalSenior%></td>
		</tr>
		<tr>
			<td colspan=5 align="center">TOTAL:</td>
		</tr>
		
		<tr>
			<td colspan=6 align="center"><input type="submit" value="Add To Cart"></td>
		</tr>
	</table>

	
<%@ include file="Footer.jsp" %>
</body>
</html>