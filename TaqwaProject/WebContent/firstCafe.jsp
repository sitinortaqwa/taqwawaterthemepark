<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<style>
		body {
  			background-color: #00465B;
		}
		h2,h4{
			color: #FAF473;
  			font-family: verdana;
  			font-size: 150%;
			}
			
		table{
  			color: #FAF473;
  			font-family: verdana;
  			font-size: 100%;
  			border: 3px blue solid;
  			border-collapse: collapse;
			}
		table, th, td {
  			border: 3px solid #00465B;
		}
		/* Customize the label (the container) */
		.container {
		  font-size: 100%;
		  display: block;
		  position: relative;
		  padding-left: 35px;
		  margin-bottom: 12px;
		  cursor: pointer;
		  font-size: 22px;
		  -webkit-user-select: none;
		  -moz-user-select: none;
		  -ms-user-select: none;
		  user-select: none;
		}
		
		/* Hide the browser's default checkbox */
		.container input {
		  position: absolute;
		  opacity: 0;
		  cursor: pointer;
		  height: 0;
		  width: 0;
		}
		
		/* Create a custom checkbox */
		.checkmark {
		  position: absolute;
		  top: 0;
		  left: 0;
		  height: 25px;
		  width: 25px;
		  background-color: #B3D5E1;
		}
		
		/* On mouse-over, add a grey background color */
		.container:hover input ~ .checkmark {
		  background-color: #B3D5E1;
		  color: #263131;
		}
		
		/* When the checkbox is checked, add a blue background */
		.container input:checked ~ .checkmark {
		  background-color: #00B9FE;
		}
		
		/* Create the checkmark/indicator (hidden when not checked) */
		.checkmark:after {
		  content: "";
		  position: absolute;
		  display: none;
		}
		
		/* Show the checkmark when checked */
		.container input:checked ~ .checkmark:after {
		  display: block;
		}
		
		/* Style the checkmark/indicator */
		.container .checkmark:after {
		  left: 9px;
		  top: 5px;
		  width: 5px;
		  height: 10px;
		  border: solid white;
		  border-width: 0 3px 3px 0;
		  -webkit-transform: rotate(45deg);
		  -ms-transform: rotate(45deg);
		  transform: rotate(45deg);
		}
		
	</style>
</head>
<meta charset="ISO-8859-1">
<title>TAQWA THEME PARK</title>
</head>
<body>
<%@ include file="Header.jsp" %>
	<h2 align="center">TAQWA THEME-PARK CAFE</h2><hr>
	<h4 align="center">Combo Set</h4><hr>
	<form method="post" action="request.jsp">
	<table align="center">
		<tr>
			<td><img src="data:image/jpeg;base64,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" alt="" border=3 height=200 width=200></img></td>
			<td><img src="data:image/jpeg;base64,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" alt="" border=3 height=200 width=200></img></td>
			<td><img src="http://1.bp.blogspot.com/-SNRy36dUGzc/VhkMf6PmjpI/AAAAAAAAAJA/b7o1uLp-cgU/s1600/Phalaenopsis%2BOrchids.jpg" alt="" border=3 height=200 width=200></img></td>
		</tr>
		<tr>
			<td align="center"><label class="container">Pakej Seroja (10 pax)
  				<input type="checkbox" name="combopackage" value="Seroja">
  				<span class="checkmark"></span>
				</label></td>
			<td align="center"><label class="container">Pakej Jasmine (6 pax)
  				<input type="checkbox" name="combopackage" value="Jasmine">
  				<span class="checkmark"></span>
				</label></td></td>
			<td align="center"><label class="container">Pakej Orkid (3 pax)
  				<input type="checkbox" name="combopackage" value="Orkid">
  				<span class="checkmark"></span>
				</label></td></td>
		</tr>
		<tr>
			<td align="center">Butter Rice<br>One Bucket Chicken (12pcs)<br>Coleslaw<br>Mashed Potato<br>2 bottles of Ice Lemon Tea<br>Free Mineral Water</td>
			<td align="center">Chicken Rice<br>Hainanese Chicken (8pcs)<br>Coleslaw<br>Park Choy Soy Sauce<br>Nyonya Pai Tee<br>2 bottles of Tea 'O'</td>
			<td align="center">Nasi Lemak<br>Fried Chicken (5 pcs)<br>Sambal Paru<br>1 Bottle of Heaven & Earth</td>
		</tr>
		<tr>
			<td align="center">RM100</td>
			<td align="center">RM62</td>
			<td align="center">RM35</td>
		</tr>
	</table>
	<hr><h4 align="center">Ala Carte</h4><hr>
	<table align="center">
		<tr>
			<td align="center"><label class="container">Butter Rice + Coleslaw + Mashed Potato + Ice Lemon Tea<br>RM12
  				<input type="checkbox" name="alacarte" value="ButterRice">
  				<span class="checkmark"></span>
				</label></td>
		</tr>
		<tr>
			<td align="center"><label class="container">Hainanese Chicken Rice + Nyonya Pai Tee + Ice Tea<br>RM9
  				<input type="checkbox" name="alacarte" value="ChickenRice">
  				<span class="checkmark"></span>
				</label></td>
		</tr>
		<tr>
			<td align="center"><label class="container">Nasi Lemak + Ayam Goreng Berempah + Sambal Paru<br>RM6.50
  				<input type="checkbox" name="alacarte" value="NasiLemak">
  				<span class="checkmark"></span>
				</label></td>
		</tr>
		<tr>
			<td align="center"><label class="container">Chicken Chop<br>RM10
  				<input type="checkbox" name="alacarte" value="ChickenChop">
  				<span class="checkmark"></span>
				</label></td>
		</tr>
		<tr>
				<td align="center"><label class="container">Corndog<br>RM7
  				<input type="checkbox" name="alacarte" value="Corndog">
  				<span class="checkmark"></span>
				</label></td>
		</tr>
		<tr>
			<td align="center"><label class="container">Chicken Nugget ( 6pcs )<br>RM4
  				<input type="checkbox" name="alacarte" value="ChickenNugget">
  				<span class="checkmark"></span>
				</label></td>
		</tr>
		<tr>
			<td align="center"><label class="container">French Fries<br>RM4
  				<input type="checkbox" name="alacarte" value="FrenchFries">
  				<span class="checkmark"></span>
				</label></td>	
		</tr>
		<tr>
			<td align="center"><label class="container">Chicken Sandwich<br>RM4
  				<input type="checkbox" name="alacarte" value="ChickenSandwich">
  				<span class="checkmark"></span>
				</label></td>
		</tr>
		<tr>
			<td align="center"><label class="container">Mackerel Sandwich<br>RM3
  				<input type="checkbox" name="alacarte" value="MackerelSandwich">
  				<span class="checkmark"></span>
				</label></td>
		</tr>
		<tr>
			<td align="center"><label class="container">Egg Sandwich<br>RM2.50
  				<input type="checkbox" name="alacarte" value="EggSandwich">
  				<span class="checkmark"></span>
				</label></td>
		</tr>
		<tr>
			<td align="center"><label class="container">----NOTHING----
  				<input type="checkbox" name="alacarte" value="noalacarte">
  				<span class="checkmark"></span>
				</label></td>
		</tr>
		<tr>
			<td align="center"><input type="submit" value="ADD TO CART"></td>
		</tr>
	</form></table>
	
<%@ include file="Footer.jsp" %>
</body>
</html>