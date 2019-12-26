<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
		body {
  			background-color: #00465B;
		}
		p{
			color: #FAF473;
  			font-family: verdana;
  			font-size: 150%;
  			text-align: center;
		}
		a:link{
			color: #FAF473;
			text-decoration: none;
		}
		a:visited{
			color: #FAF473;
			text-decoration: none;
		}
		a:hover{
			color: #263131;
			text-decoration: none;
		}
		a:active{
			color: #FAF473;
			text-decoration: none;
		}
</style>
<meta charset="ISO-8859-1">
<title>TAQWA THEME PARK</title>
</head>
<body>
<%@ include file="Header.jsp" %>
	<%
		String combo[] = request.getParameterValues("combopackage");
		String alacarte[] = request.getParameterValues("alacarte");
		
		double total=0;
		double price=0; 
		
		
		for (int i = 0; i < combo.length; i++){
			if (combo[i].equals("Seroja")){
				price=100;
			}
			else if(combo[i].equals("Jasmine")){
				price=62;
			}
			else if(combo[i].equals("Orkid")){
				price=35;
			}
			total=total+price;
		}
		
		for (int i = 0; i < alacarte.length; i++){
			if (alacarte[i].equals("ButterRice")){
				price=12;
			}
			else if(alacarte[i].equals("ChickenRice")){
				price=9;
			}
			else if(alacarte[i].equals("NasiLemak")){
				price=6.50;
			}
			else if(alacarte[i].equals("ChickenChop")){
				price=10;
			}
			else if(alacarte[i].equals("Corndog")){
				price=7;
			}
			else if(alacarte[i].equals("ChickenNugget")){
				price=4;
			}
			else if(alacarte[i].equals("FrenchFries")){
				price=4;
			}
			else if(alacarte[i].equals("ChickenSandwich")){
				price=4;
			}
			else if(alacarte[i].equals("MackerelSandwich")){
				price=3;
			}
			else if(alacarte[i].equals("EggSandwich")){
				price=2.50;
			}
			else if(alacarte[i].equals("noalacarte")){
				price=0;
			}
			total=total+price;
		}
		
		
		if (combo.length == 3){
	%>	
		<p>For package, you have choose package <%=combo[0] %> , <%=combo[1] %> & <%=combo[2] %> 
	
	<%	} else if (combo.length == 2){ %>
		<p>For package, you have choose package <%=combo[0] %> & <%=combo[1] %> 
	
	<%	} else if (combo.length == 1){ %>
		<p>For package, you have choose package <%=combo[0] %> 
		
	<%	} 
		
		if (alacarte.length == 10){ %>
		<p>For menu, you choose <%=alacarte[0] %> , <%=alacarte[1] %> , <%=alacarte[2] %> , <%=alacarte[3] %> , <%=alacarte[4] %> , <%=alacarte[5] %> , <%=alacarte[6] %> , <%=alacarte[7] %> , <%=alacarte[8] %> & <%=alacarte[9] %>
	<%	}
		else if (alacarte.length == 9){ %>
		<p>For menu, you choose <%=alacarte[0] %> , <%=alacarte[1] %> , <%=alacarte[2] %> , <%=alacarte[3] %> , <%=alacarte[4] %> , <%=alacarte[5] %> , <%=alacarte[6] %> , <%=alacarte[7] %> & <%=alacarte[8] %> 
	<%	}
		else if (alacarte.length == 8){ %>
		<p>For menu, you choose <%=alacarte[0] %> , <%=alacarte[1] %> , <%=alacarte[2] %> , <%=alacarte[3] %> , <%=alacarte[4] %> , <%=alacarte[5] %> , <%=alacarte[6] %> & <%=alacarte[7] %>
	<%	}
		else if (alacarte.length == 7){ %>
		<p>For menu, you choose <%=alacarte[0] %> , <%=alacarte[1] %> , <%=alacarte[2] %> , <%=alacarte[3] %> , <%=alacarte[4] %> , <%=alacarte[5] %> & <%=alacarte[6] %> 
	<%	}
		else if (alacarte.length == 6){ %>
		<p>For menu, you choose <%=alacarte[0] %> , <%=alacarte[1] %> , <%=alacarte[2] %> , <%=alacarte[3] %> , <%=alacarte[4] %> & <%=alacarte[5] %>  
	<%	}
		else if (alacarte.length == 5){ %>
		<p>For menu, you choose <%=alacarte[0] %> , <%=alacarte[1] %> , <%=alacarte[2] %> , <%=alacarte[3] %> & <%=alacarte[4] %> 
	<%	}
		else if (alacarte.length == 4){ %>
		<p>For menu, you choose <%=alacarte[0] %> , <%=alacarte[1] %> , <%=alacarte[2] %> & <%=alacarte[3] %> 
	<%	}
		else if (alacarte.length == 3){ %>
		<p>For menu, you choose <%=alacarte[0] %> , <%=alacarte[1] %> & <%=alacarte[2] %>
	<%	}
		else if (alacarte.length == 2){ %>
		<p>For menu, you choose <%=alacarte[0] %> & <%=alacarte[1] %> 
	<%	}
		else if (alacarte.length == 1){ %>
		<p>For menu, you choose <%=alacarte[0] %> 
	<%	}
		else if (alacarte.length == 0){ %>
		<p>You don't have any additional menu</p>
	<% } %>	
	
	
	<br>Total price is = <%=total %>
	
	<br><a href="homepage.jsp">HOMEPAGE</a>

<%@ include file="Footer.jsp" %>
</body>
</html>