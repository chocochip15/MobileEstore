<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Link to bootstrap css should first and then followed by link to our own css-->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <!--First Look for the bootstrap css online if not present then use the below link-->
        <link rel="stylesheet" href="/bootstrap-3.3.6-dist/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="/CSS/css_Landing_Page.css" >
        <link rel="stylesheet" type="text/css" href="<c:url value="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />" />
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css" />" />
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/CSS/css_Landing_Page.css" />" />
    </head>
    <body>
    <!----Navigation Bar---->
        <div class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <a href="Landing_page.jsp" class="navbar-brand">Mboile E sotre</a>   
                <button class="navbar-toggle" data-toggle="collapse" data-target="navHeaderCollapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                </button>
                <div class="colapse navbar-collapse navHeaderCollapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="E:/Landing_page.html">Home</a></li>
                        <li><a href="#">Products</a></li>
                        <li><a href="/About_Us.jsp">About Us</a></li>
                        <li><a href="/Sign_in.jsp">Sign In</a></li>
                        <li><a href="/Sign_up.jsp">Sign Up</a></li>
                        <!--<li class="dropdown"><button class=dropdown-toggle data-toggel="dorpdown">Social Media</a>
                            <ul class="dropdown-menu">
                            <li><a href="www.facebook.com">Facebook</a></li>
                            <li><a href="www.twitter.com">Twitter</a></li>
                            <li><a href="www.Instagram.com">Instagram</a></li>
                            </ul>
                        </li>-->
                    </ul>
                </div>
             </div>
        </div>
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
                <img class="img" src="<c:url value="/resources/images/apple1.jpg" />" alt="apple1.jpg" />
                </div>
                <div class="item">
                <img class="img" src="<c:url value="/resources/images/apple2.png" />" alt="apple2.png" />
                </div>
                <div class="item">
                <img class="img" src="<c:url value="/resources/images/htc.jpg" />" alt="htc.jpg" />
                </div>
                <div class="item">
                <img class="img" src="<c:url value="/resources/images/nokia.jpg" />" alt="nokia.jpg" />
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
                <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <!--<div class="row">
        <h4>Info</h4>
        <div class=col -sm -2>
        <img scr ="apple2.png" alt="mobile">
        </div>
        </div>-->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-2">
                        <h6>Copyright &copy; 2016 Niit Tranning</h6>
                    </div>  
                    <div class="col-sm-4">
                        <h6>About Us</h6>
                        <p>blasdhjkabsdkjbaksbdasdjnasd</p>
                    </div>
                    <div class="col-sm-2">
                        <h6>Follow Us on</h6>
                        <ul class="list-unstyled">
                        <li>Facebook</li>
                        <li>Facebook</li>
                        <li>Twitter</li>
                        <li>Google+</li>
                        </ul> 
                    </div>
                    <div class="col-sm-2">
                        <h5>Diffrent Mobile Devices For you with our <span class="glyphicon glyphicon-heart"></span></h5>
                    </div>
                </div>
            </div>
        </footer><!--ending of footer-->
        <!--all the java scripts at the bottom-->
        <script type="text/javascript" src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" />"></script>
        <!--If Cdn for the script is not available then use this local link-->
        <script type="text/javascript" src="<c:url value="/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js" />"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/jqueryUI-AutoComplete/jquery-1.9.1.js"></script>
</body>
</html>