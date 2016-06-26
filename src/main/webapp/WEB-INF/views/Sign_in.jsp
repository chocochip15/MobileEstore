<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
      pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
  
  <html>
      <head>
          <title>Form</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
          <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      </head>
   <body>
   ${message}
    <div clas="container">
     <div clas="row">
      <form:form action="isValidUser" method="post" name="form1" , role="form" >
       <div class = "form-group">
         
        <label for = "name">Name</label>
        <input type = "text" class = "form-control" id = "usr" placeholder = "Enter Name">
     </div>
          <div class = "form-group">
                  <label for = "Password">Passowrd</label>
              <input type="text" class="form-control" id="pwd"></br>
        </div>
          <button type="submit" class="btn btn-primary" onclick="validate()">Login</button>
         </form:form>
        </div>
       </div>
      
  <script type="text/javascript">
  function validate()
      {
          var x=document.forms["form1"]["usr"].value;
          var y=document.forms["form1"]["pwd"].value;
         // alert(x+y);
          
          
          if(x==null || y==null || x=="" || y=="")
        {
            alert("usr name and pswd cannot be null or empty");
        }
      }
  </script>
  </body>
  </html>