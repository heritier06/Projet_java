<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulaire vélo</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<body>
	
<div class="container">
  <br><br>
  <h2>Formulaire vélo</h2>
  <form name="monform" action="recupBike.jsp" method="post">
    <div class="form-group">
      <label for="modelName">Nom du vélo :</label>
      <input type="text" class="form-control" id="modelName" name="modelName" placeholder="Nom du vélo">
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
