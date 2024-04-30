<%@page import="jsp_Projet_bike_package.Dbconnect"%>
<%@page import="java.sql.*"%>
<%@ page import="jsp_Projet_bike_package.Bike" %>
<%@ page import="jsp_Projet_bike_package.BikeDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Bike Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

  <link rel="stylesheet" type="text/css" href="css/stylebike.css">

</head>
<body>

<div class="container">
  <h2>Liste des Vélos</h2>

  <div class="row">
    <% 
      for (Bike bike : BikeDAO.getAllBikes()) {
    %>
    <div class="col-md-4 col-sm-6 col-xs-10">
      <div class="thumbnail">
        <img src="images/<%= bike.getId() %>.png" class="zoom" alt="Bike Image" style="width: 100%; height: 70%">
        <div class="caption" style="text-align: center;">
          <p><b>Modèle : <%= bike.getModelName() %></b></p>
          <p>Tarif : <%= bike.getPrice() %> euros</p>
          <p style="text-align: left;">Description du vélo</p>
        </div>
        <input class="button" type="button" value="Modifier" style="position: relative;">
        <a class="btn btn-primary" href="viewBike.jsp?bikeId=<%= bike.getId() %>">Voir détails</a>
        <a class="btn btn-primary btn-warning" href="editBike.jsp?bikeId=<%= bike.getId() %>">Modifier vélo</a>
      </div>
      <p style="border-bottom: 3px solid black; position: relative; top: -20px;"></p>
    </div>
    <% 
      }
    %>
  </div>  
</div>

</body>
</html>
