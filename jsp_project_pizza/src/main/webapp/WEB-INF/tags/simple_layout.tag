
<!DOCTYPE html>
<%@tag description="Simple Template" pageEncoding="UTF-8"%>

<%@attribute name="title"%>
<%@attribute name="head_area" fragment="true" %>
<%@attribute name="body_area" fragment="true" %>
<html lang="en">
<head>
  <title>Bootstrap pizza Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

   <link rel="stylesheet" type="text/css" href="css/stylepizza.css">
   <title>${title}</title>
   <jsp:invoke fragment="head_area"/>
</head>
<body>
<jsp:invoke fragment="body_area"/>
	 
  
 


</body>
</html>


 