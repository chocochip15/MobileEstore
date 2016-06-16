<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
 <body>
  <div clas="container">
   <div clas="row">
    <form name="form1" , role="form" >
     <div class = "form-group">
       
      <label for = "name">Enter Your Email Address:</label>
      <input type = "text" class = "form-control" id = "usr" placeholder = "Email">
   </div>
        <div class = "form-group">
                <label for = "Password">Passowrd:</label>
            <input type="text" class="form-control" id="pwd" placeholder = "Password"></br>
        
      </div>
        <div class = "form-group">
                <label for = "Phone No.">Phone NO:</label>
            <input type="text" class="form-control" id="pwd" placeholder = "Phone NO."></br>
        
      </div>
        <div class = "form-group">
                <label for = "Phone No.">Address:</label>
            <input type="text" class="form-control" id="pwd" placeholder = "Address"></br>
        
      </div>
        <button type="submit" class="btn btn-primary">Sign Up</button>
       </form>
      </div>
     </div>
    </body>
</html>