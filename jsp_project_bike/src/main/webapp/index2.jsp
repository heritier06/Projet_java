<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Gallery Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

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
        transform: scale(1);
        transition: .3s ease-in-out;
    }

    .zoom:hover {
        transform: scale(1.1);
    }
  </style>
</head>
<body>

<div class="container">
  <h2>Image Gallery</h2>

  <div class="row">
    <% 
    try {
        String login = "root";
        String password = "";
        String url = "jdbc:mysql://localhost:3306/your_database_name";
        Connection cn = null;
        Class.forName("com.mysql.jdbc.Driver");
        cn = DriverManager.getConnection(url, login, password);
        String req = "SELECT * FROM bikes";
        PreparedStatement ordre = cn.prepareStatement(req);
        ResultSet rs = ordre.executeQuery();
        
        while (rs.next()) {   
    %>
    <div class="col-md-4 col-sm-6 col-xs-10">
      <div class="thumbnail">
        <img src="images/<%= rs.getInt(1) %>.jpg" class="zoom" alt="Bike Image" style="width:100%; height:70%">
        <div class="caption" style="text-align: center;">
          <p><b>Nom : <%= rs.getString(2) %></b></p>
          <p>Tarif : <%= rs.getFloat(3) %> euros</p>
          <p style="text-align: left;">Description du vélo</p>
        </div>
        <input class="button" type="button" value="Modifier" style="position: relative;">
      </div>
      <p style="border-bottom: 3px solid black; position: relative; top: -20px;"></p>
    </div>
    <% 
        }
        cn.close();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    %>
  </div>  
</div>

</body>
</html>
