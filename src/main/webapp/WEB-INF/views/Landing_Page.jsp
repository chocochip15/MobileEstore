<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Landing Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <!--Link to bootstrap css should first and then followed by link to our own css-->
        <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
        <!--First Look for the bootstrap css online if not present then use the below link-->              
        <link rel="stylesheet" type="text/css" href="/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css"  >
        <%-- <c:url value="" /> --%>
        
  <spring:url value="/resources/CSS/css_LandingPage.css" var="css_LandingPage"/>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */
     .jumbotron {
      margin-bottom: 0;
         font-family:font-family: 'Indie Flower', cursive;
    }
      .jheader{
          font-family: 'Indie Flower', cursive;
      }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2; 
      padding: 25px;
    }
      #myCarousel
      {
          margin-bottom: 50px;
      }
  </style>
</head>
<body>

<div class="jumbotron">
  <div class="container text-center">
     <img class="img" src="<c:url value="/resources/imgs/logo.png" />" alt="logo.png" /><sup class="brand-tag text-xs">beta</sup><br>
    <p class="jheader">Only The orignal,fresh and trendy mobile devices for you</p>
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
      <a class="navbar-brand" href="${session.getContextPath()}/MobileEstore/">Home</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="${session.getContextPath()}/MobileEstore/products">Products</a></li>
        <li><a href="#">Deals</a></li>
        <li><a href="${session.getContextPath()}/MobileEstore/Sign_up">Sign Up</a></li>
        <li><a href="${session.getContextPath()}/MobileEstore/About_us">About Us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="${session.getContextPath()}/MobileEstore/Sign_in"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>
     <!--Carousel-->
<div class="Container">        
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                <div class="item active">
                <img class="img" src="<c:url value="/resources/imgs/apple1.jpg" />" alt="apple1.jpg" />
                </div>
                <div class="item">
                <img class="img" src="<c:url value="/resources/imgs/apple2.png" />" alt="apple2.png" />
                </div>
                <div class="item">
                <img class="img" src="<c:url value="/resources/imgs/htc.jpg" />" alt="htc.jpg" />
                </div>
                <div class="item">
                <img class="img" src="<c:url value="/resources/imgs/nokia.jpg" />" alt="nokia.jpg" />
                </div>
                </div>
                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
                
                </a>
            </div>
        </div>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-success">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
  </div>
</div>

<footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-2">
                        <h6>Copyright &copy; 2016 Niit Tranning</h6>
                        
                       
    
    <h2 class="text-center"><a href="#myModal" role="button" class="btn btn-primary btn-sm" data-toggle="modal">Contact Us</a></h2>
    

<!--Contact Us Button Using Bootstrap Modal -->
<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">We'd Love to Hear From You</h3>
      </div>
      <div class="modal-body">
        <form class="form-horizontal col-sm-12">
          <div class="form-group"><label>Name</label><input class="form-control required" placeholder="Your name" data-placement="top" data-trigger="manual" data-content="Must be at least 3 characters long, and must only contain letters." type="text"></div>
          <div class="form-group"><label>Message</label><textarea class="form-control" placeholder="Your message here.." data-placement="top" data-trigger="manual"></textarea></div>
          <div class="form-group"><label>E-Mail</label><input class="form-control email" placeholder="email@you.com (so that we can contact you)" data-placement="top" data-trigger="manual" data-content="Must be a valid e-mail address (user@gmail.com)" type="text"></div>
          <div class="form-group"><label>Phone</label><input class="form-control phone" placeholder="999-999-9999" data-placement="top" data-trigger="manual" data-content="Must be a valid 10 digit phone number (999-999-9999)" type="text"></div>
          <div class="form-group"><button type="submit" class="btn btn-success pull-right">Send It!</button> <p class="help-block pull-left text-danger hide" id="form-error">&nbsp; The form is not valid. </p></div>
        </form>
      </div>
      <div class="modal-footer">
        <button  class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
      </div>
    </div>
  </div>
</div>
       
                        
                    </div>  
                    <div class="col-sm-4">
                        <h6>About Us</h6>
                        <p>An E-commerce site for selling mobile devices and accessories.</p>
                    </div>
                    <div class="col-sm-2">
                        <h6>Follow Us on</h6>
                        <ul class="list-unstyled">
                        <li>Facebook<a href="www.facebook.com" class="fa fa-facebook-official"></a></li>
                        <li>Twitter<a href="www.twitter.com" class="fa fa-twitter-square"></a></li>
                        <li>Google+<a href="https://plus.google.com/" class="fa fa-google-plus-square"></a></li>
                        </ul> 
                    </div>
                    <div class="col-sm-4">
                        <h5>Diffrent Mobile Devices For you with our <span class="glyphicon glyphicon-heart"></span></h5>
                        
                    </div>
                   
                </div>
                
            </div>
        </footer><!--ending of footer-->
    
     <!--all the java scripts at the bottom-->
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <!--If Cdn for the script is not available then use this local link-->
        <script type="text/javascript" src=/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js></script>
        <script type="text/javascript" src=/js/jqueryUI-AutoComplete/jquery-1.9.1.js></script>


</body>
</html>

