<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    .thumbnail {
      height: 380px;
      margin-bottom: 50px;
    }

    .button {
      background-color: gray;
      color: white;
    }

    .button:hover {
      background-color: darkgray; 
    }

    .zoom {
      -webkit-transform: scale(1);
      transform: scale(1);
      -webkit-transition: .3s ease-in-out;
      transition: .3s ease-in-out;
    }

    .zoom:hover {
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
      String modelName = "";
      int bikeId = 0;
      float price = 0;
      String bikeIdParam = request.getParameter("bikeId");
      try {
        String login = "root";
        String password = "";
        String url = "jdbc:mysql://localhost:3306/bikebox"; // Mettez à jour le nom de la base de données pour les vélos
        Connection cn = null;
        Class.forName("com.mysql.jdbc.Driver");
        cn = DriverManager.getConnection(url, login, password);
        String req = "SELECT * FROM bike WHERE id = ?";
        PreparedStatement ordre = cn.prepareStatement(req);
        ordre.setInt(1, Integer.parseInt(bikeIdParam));
        ResultSet rs = ordre.executeQuery();
        if (rs.next()) {
          bikeId = rs.getInt("id");
          modelName = rs.getString("modelName");
          price = rs.getFloat("price");
        }
      } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
      }
    %>
    
    <div class="col-md-6 col-sm-8 col-xs-10">
      <div class="thumbnail">
        <img src="images/<%= bikeId %>.jpg" class="zoom" alt="Bike" style="width: 100%; height: 70%">
        <div class="caption" style="text-align: center;">
          <p><b>Modèle : <%= modelName %></b></p>
          <p>Tarif : <%= price %> euros</p>
          <p style="text-align: left;">Description du vélo</p>
        </div>
        <a class="btn btn-primary" href="index.jsp">Retour à la liste des vélos</a>
      </div>
      <p style="border-bottom: 3px solid black; position: relative; top: -20px;"></p>
    </div>
  </div>  
</div>

<div class="container">
  <br><br>
  <h2>Formulaire vélo</h2>
  <form name="monform" action="recup.jsp" method="post">
    <div class="form-group">
      <label for="modelName">Modèle de vélo :</label>
      <input type="text" class="form-control" id="modelName" name="modelName" placeholder="Modèle de vélo">
    </div>
    <div class="form-group">
      <label for="description">Description du vélo :</label><br>
      <textarea name="description" rows="4" cols="40" class="form-control">Description du vélo</textarea>
      <br>
      <label for="imageBike">Image du vélo :</label>
      <input type="file" id="imageBike" name="imageBike">
      <br>
      <label for="price">Tarif :</label>
      <input type="text" class="form-control" id="price" name="price" placeholder="Tarif (euros)">
    </div>
    <button type="submit" class="btn btn-primary">Ajouter un vélo</button>
  </form>
</div>

</body>
</html>
