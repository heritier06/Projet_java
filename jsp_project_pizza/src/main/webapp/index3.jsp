<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

   <link rel="stylesheet" type="text/css" href="css/stylepizza.css">


</head>
<body>

<div class="container">
  <h2>Image Gallery tst</h2>

  <div class="row">

          <%
	try {
		String login="root";
		String password="";
		String url="jdbc:mysql://localhost:3306/pizzabox" ;
		Connection cn = null;
		Class.forName("com.mysql.jdbc.Driver") ;
		cn=DriverManager.getConnection(url, login, password) ;
		String req="SELECT * FROM pizza" ;
		PreparedStatement ordre = cn.prepareStatement(req) ;
		ResultSet rs = ordre.executeQuery();
		
		while (rs.next()) {   
			%>
			
			<div class="col-md-4 col-sm-6 col-xs-10">
		      <div class="thumbnail" >
		          <img src="images/<%=rs.getInt(1)%>.jpg" class="zoom" alt="Lights" style="width:100%; height:70%">
		          <div class="caption" style="text-align: center;">
		          <p> <b>Le titre : <%out.println(rs.getString(2)); %> </b> </p>
		          <p> Tarif : <%out.println(rs.getFloat(3)); %> euros </p>
		          <p style="text-align: left;"> blablabla la description </p>
		        </div>
		        <input class="button" type="button" value="Modifier" style="position: relative;">
		          <a class="btn btn-primary  "  href="onepizza.jsp?numpizza=<%=rs.getInt(1)%>"  >Editer la pizza</a>
		         <a class="btn btn-primary btn-warning  "  href="modifonepizza3.jsp?numpizza=<%=rs.getInt(1)%>"  >modifier la pizza</a>
		         </div>
		     <p style="border-bottom:3px solid black; position: relative; top: -20px;"></p>
		    </div>

		
		
		<%
		
		}
	}
	catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	catch (SQLException e) {
		e.printStackTrace();
	}
%>
  
</div>  
</div>


</body>
</html>




  
  
   


    
</body>
</html>