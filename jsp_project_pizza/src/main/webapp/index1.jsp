<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

</head>
<body>
	
<div class="container">
<br><br>
  <h2>Formulaire pizza</h2>
  <form name="monform" action="recup.jsp" method="post">
    <div class="form-group">
      <label for="nom">Nom pizza :</label>
      <input type="text" class="form-control" id="nom" name="nom" placeholder="Nom pizza">
    </div>
    <div class="form-group">
      <label for="desc">Description de la pizza : </label> <br>
      <TEXTAREA name="description" rows=4 cols=40 class="form-control"> Description</TEXTAREA>
      <br>
      <label for="avatar">Image de la pizza :</label>
	  <input type="file" id="imagepiz" name="imagepiz">
	  <br>
	  <label>Tarif :</label>
	  <input type="text" class="form-control" id="tarif" name="tarif" placeholder="Tarif (euros)">
	  
    </div>
	
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</body>
</html>



</body>
</html>