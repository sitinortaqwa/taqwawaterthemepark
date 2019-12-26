<%@ page contentType="text/html" language="java" import="java.sql.*"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <head> <title>Connection Test</title> </head> 
 <body>
  <% 
  Connection con; Statement stm; 
  try {
	 	Class.forName("com.mysql.jdbc.Driver");
  		con = DriverManager.getConnection("jdbc:mysql://localhost/test?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","abc123"); 
  		stm = con.createStatement(); 
  		out.println("Connection successfully executed"); 
  } catch (Exception e) 
  { 
	  out.println("Could not connect to the database" + e.getMessage());
	  } %> </body>

