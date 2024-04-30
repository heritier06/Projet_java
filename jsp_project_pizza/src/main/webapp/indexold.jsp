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

  <style type="text/css">
        .thumbnail{
            height: 380px;
            margin-bottom: 50px;
        }

        .button {
            background-color:gray ;
            color: white;
        }

        .button:hover {
          background-color: darkgray; 
        }

        .zoom{
         -webkit-transform: scale(1);
         transform: scale(1);
         -webkit-transition: .3s ease-in-out;
         transition: .3s ease-in-out;
        }
        .zoom:hover{
        -webkit-transform: scale(1.1);
        transform: scale(1.1);
        }

  </style>


</head>
<body>

<div class="container">
  <h2>Image Gallery</h2>

  <div class="row">

    <% 
        for (int i=1; i<=13; i++) {
    %>

    <div class="col-md-4 col-sm-6 col-xs-10">
      <div class="thumbnail" >
          <img src="images/<%=i%>.jpg" class="zoom" alt="Lights" style="width:100%; height:70%">
          <div class="caption" style="text-align: center;">
          <p> <b>Le titre :  
          <%
		try {
		String login="root";
		String password="";
		String url="jdbc:mysql://localhost:3306/pizzabox" ;
		Connection cn = null;
		Class.forName("com.mysql.jdbc.Driver") ;
		cn=DriverManager.getConnection(url, login, password) ;
		String req="SELECT * FROM pizza WHERE NroPizz="+i ;
		PreparedStatement ordre = cn.prepareStatement(req) ;
		ResultSet rs = ordre.executeQuery();
		
		while (rs.next()) {             // Va aller voir toutes les lignes de rs
            out.println(rs.getString("DesignPizz"));
            out.println(rs.getString("DesignPizz"));
      	  }
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
%>
  
          </b></p>
          <p style="text-align: left;"> blablabla la description </p>
        </div>
        <input class="button" type="button" value="Modifier" style="position: relative;">
      </div>
     <p style="border-bottom:3px solid black; position: relative; top: -20px;"></p>
    </div>

    <%
        }
    %>
</div>
</div>


</body>
</html>




  
  
   


    
</body>
</html>