<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
      pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
  
  <html>
      <head>
          <title>Admin login Form</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
          <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      <!--Link to bootstrap css should first and then followed by link to our own css-->
        <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
        <!--First Look for the bootstrap css online if not present then use the below link-->              
        <link rel="stylesheet" type="text/css" href=/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css  >
            <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */
     .jumbotron {
      margin-bottom: 0;
      font-family: 'Indie Flower', cursive;
      
     
    }
     
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
        #signIn{
    margin: auto;
    width: 50%;
    border: 3px ;
    padding: 10px;
             margin-bottom: 50px;
}
        
  </style>
    </head>
 <body>
     <div class="jumbotron">
  <div class="container text-center">
    <img src="E:/logo.png"><sup class="brand-tag text-xs">beta</sup><br>
      <p>Admin Login PAGE<i class="fa fa-user" aria-hidden="true"></i></p>
    
  </div>
</div>
     
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="${session.getContextPath()}/MobileEstore/Landing_Page">Home</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="${session.getContextPath()}/MobileEstore/Products">Products</a></li>
        <li><a href="#">Deals</a></li>
        <li><a href="${session.getContextPath()}/MobileEstore/Sign_up">Sign Up</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav><!--navbar ending-->
     
     
     
  
     
   <form:form method="post" action="http://localhost:8080/MobileEstore/isValidUser" modelAttribute="user" commandName="user" >
  
   <table>
   <tr>
   <td><form:label path="userId">ADMIN ID</form:label></td>
   <td><form:input path="userId"/></td>
   </tr>
   
   <tr>
   <td><form:label path="userPassword">Admin Password</form:label></td>
   <td><form:input path="userPassword"/></td>
   </tr>
  </table>
    <input type="submit"/>
   </form:form>
     
     
     <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-2">
                        <h6>Copyright &copy; 2016 Niit Tranning</h6>
                        
                       
    
   
                    <div class="col-sm-4">
                        <h6>About Us</h6>
                        <p>An E-commerce site for selling mobile devices and accessories.</p>
                    </div>
                    <div class="col-sm-6">
                        <h6>Follow Us on</h6>
                        <ul class="list-unstyled">
                        <li><a href="www.facebook.com" class="fa fa-facebook-official"></a>Facebook</li>
                        <li><a href="www.twitter.com" class="fa fa-twitter-square"></a>Twitter</li>
                        <li><a href="https://plus.google.com" class="fa fa-google-plus-square"></a>Google+</li>
                        </ul> 
                    </div>
                    <div class="col-sm-4">
                        <h5>Admin Sign Here </h5>
                        
                    </div>
                   
                </div>
                
            </div>
        </footer>  
    <!--all the java scripts at the bottom-->
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <!--If Cdn for the script is not available then use this local link-->
        <script type="text/javascript" src=/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js></script>
        <script type="text/javascript" src=/js/jqueryUI-AutoComplete/jquery-1.9.1.js></script>

</body>
</html>