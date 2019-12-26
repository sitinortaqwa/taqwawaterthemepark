<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Room Booking</title>
<style>
body{
	text-align: center;
  	background: #00465B;
}
table, td, tr{
	font-family: 'Inconsolata', monospace;
	}
</style>
</head>
 
<body>

<p><font face="Verdana, Arial, Helvetica, sans-serif"><strong>Shopping Cart</strong></font></p>
<p><a href="/room.jsp" mce_href="room.jsp">Room Booking</a> </p>
<table width="75%" border="1">
  <tr bgcolor="#CCCCCC">
    <td><strong>Room Name</strong></td>
    <td><strong>Quantity</strong></td>
    <td><strong>Unit Price</strong></td>
    <td><strong>Nights Stay</strong></td>
    <td><strong>Total Price</strong></td>
  </tr>
  <jsp:useBean id="cart" scope="session" class="cart.cart" />
  <c:if test="${cart.ItemCount==0}">
  <tr>
  <td colspan="4">- Cart is currently empty -<br/>
  </tr>
  </c:if>
  <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
  <form name="item" method="POST" action="cartController">
  <tr>
    <td><b><c:out value="${cartItem.roomName}"/></b><br/>
      <c:out value="${cartItem.roomBook}"/></font></td>
    <td>
    	<input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'>
    	<input type='text' name="quantity" value='<c:out value="${cartItem.night}"/>' size='2'> 
    	<input type="submit" name="action" value="Update">
 <br/>         <input type="submit" name="action" value="Delete">></td>
    <td>$<c:out value="${cartItem.price}"/></td>
    <td>$<c:out value="${cartItem.total}"/></td>
  </tr>
  </form>
  </c:forEach>
  <tr>
    <td colspan="2"> </td>
    <td> </td>
    <td>Subtotal: $<c:out value="${cart.Total}"/></font></td>
  </tr>
</table>

<%@ include file="Footer.jsp" %>
</body>
</html>