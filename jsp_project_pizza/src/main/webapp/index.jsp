<%@page import="jsp_Projet_pizza_package.Dbconnect"%>
<%@page import="java.sql.*"%>
<%@ page import="jsp_Projet_pizza_package.Pizza" %>
<%@ page import="jsp_Projet_pizza_package.PizzaDAO" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap pizza Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

   <link rel="stylesheet" type="text/css" href="css/stylepizza.css">

</head>
<body>

<div class="container">
  <h2>Liste des Pizzas dao</h2>

  <div class="row">
           <% 
            for ( Pizza unePizza :PizzaDAO.getAllPizzas())
            {
            %>
			<div class="col-md-4 col-sm-6 col-xs-10">
		      <div class="thumbnail" >
		          <img src="images/<%=unePizza.getNropizza()%>.jpg" class="zoom" alt="Lights" style="width:100%; height:70%">
		          <div class="caption" style="text-align: center;">
		          <p> <b>Le titre : <%=unePizza.getNompizza() %> </b> </p>
		          <p> Tarif : <%=unePizza.getPrixpizza() %> euros </p>
		          <p style="text-align: left;"> blablabla la description </p>
		        </div>
		        <input class="button" type="button" value="Modifier" style="position: relative;">
		          <a class="btn btn-primary  "  href="onepizza.jsp?numpizza=<%=unePizza.getNropizza()%>"  >Editer la pizza</a>
		         <a class="btn btn-primary btn-warning  "  href="modifonepizza3.jsp?numpizza=<%=unePizza.getNropizza()%>"  >Modifier la pizza</a>
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


 