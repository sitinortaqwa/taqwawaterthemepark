<!DOCTYPE html>
<html>
<head>
  <title>Taqwa Room</title>
  <link href="https://fonts.googleapis.com/css?family=Fjalla+One|Inconsolata&display=swap" rel="stylesheet">
  <link href="try.css" rel="stylesheet">
  
  <style>
  body{
  text-align: center;
  background: #00465B;
}
img{
  width:250px;
  height:200px;
}
h1{
  font-family: 'Fjalla One', sans-serif;
}
.title{
  color:#fff;
  font-size: 36px;
}
p{
  font-family: 'Inconsolata', monospace;
}
span{
  text-align: center;
}
.card {
background: #fff;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
max-width: 300px;
margin: 20px;
padding: 2px;
text-align: center;
font-family: arial;
display: inline-block;
}

.price {
color: grey;
font-size: 22px;
}

button {
border: none;
outline: 0;
padding: 12px;
color: white;
background-color: #000;
text-align: center;
cursor: pointer;
width: 20%;
font-size: 18px;
}

button:hover {
opacity: 0.7;
}
.cart{
  background: #000;
     color: #fff;
     float: left;
     font-size: 22px;
     font-weight: 300;
     line-height: 49px;
     margin: 0;
     padding: 0 80px;
    

     -webkit-transition: margin .15s linear;
     -moz-transition: margin .15s linear;
     -ms-transition: margin .15s linear;
     -o-transition: margin .15s linear;
     transition: margin .15s linear;
 }


  </style>
</head>

<body>
<%@ include file="Header.jsp"%>
  <h1 class="title">ROOM BOOKING</h1>
  
  <div class="card">
  <form name="melur" method="POST" action="cartController">
    <img src="2 singles.jpg">
    <h1>MELUR</h1>
    <p class="price">RM 80 /night</p>
    <p>2 single beds</p>
    <p>room available: 3</p>
    <p class="cart">
  <input type="hidden" name="price" value="80">
  <input type="hidden" name="action" value="add">
  <input type="submit" name="addToCart" value="Add To Cart">
  </p></form></div>
  
  <div class="card">
  <form name="mawar" method="POST" action="cartController">
    <img src="1 queen.jpg">
    <h1>MAWAR</h1>
    <p class="price">RM 120 /night</p>
    <p>1 Queen bed</p>
    <p>room available: 5</p>
    <p class="cart">
   <input type="hidden" name="price" value="80">
  <input type="hidden" name="action" value="add">
  <input type="submit" name="addToCart" value="Add To Cart">
  </p></form>
  </div>
  <div class="card">
  <form name="melati" method="POST" action="cartController">
    <img src="1 single 1 double.jpg">
    <h1>MELATI</h1>
    <p class="price">RM 150 /night</p>
    <p>1 single bed 1 Queen bed</p>
    <p>room available: 7</p>
    <p class="cart">
  <input type="hidden" name="price" value="80">
  <input type="hidden" name="action" value="add">
  <input type="submit" name="addToCart" value="Add To Cart">
  </p></form>
  </div>
  <div class="card">
  <form name="matahari" method="POST" action="cartController">
    <img src="family.jpg">
    <h1>MATAHARI</h1>
    <p class="price">RM 200 /night</p>
    <p>1 single 1 Queen bed 1 King bed</p>
    <p>room available: 10</p>
    <p class="cart">
  <input type="hidden" name="price" value="80">
  <input type="hidden" name="action" value="add">
  <input type="submit" name="addToCart" value="Add To Cart">
  </p></form>
  </div>
  <p><button><a href="/cart.jsp" mce_href="cart.jsp"> View Cart</a></button></p>
  

<%@ include file="Footer.jsp" %>
</body>
</html>
