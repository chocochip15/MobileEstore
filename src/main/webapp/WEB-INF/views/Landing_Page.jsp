<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Link to bootstrap css should first and then followed by link to our own css-->
        <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <!--First Look for the bootstrap css online if not present then use the below link-->              
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
                       <!-- <li class="active"><a href="E:/Landing_page.html">Home</a></li> --> 
                        <li><a href="${session.getContextPath()}/MobileEstore/Products">Products</a></li>
                        <li><a href="${session.getContextPath()}/MobileEstore/About_us">About Us</a></li>
                        <li><a href="${session.getContextPath()}/MobileEstore/Sign_in">Sign In</a></li>
                        <li><a href="${session.getContextPath()}/MobileEsotre/Sign_up">Sign Up</a></li>
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
                <img class="img" src="<c:url value="resources/imgs/apple1.jpg" />" alt="apple1.jpg" />
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
                        
                        <!--Contact Us Button Using Bootstrap Modal -->
				<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
								<h3 id="myModalLabel">We'd Love to Hear From You</h3>
							</div>
							<div class="modal-body">
								<form class="form-horizontal col-sm-12">
									<div class="form-group">
										<label>Name</label><input class="form-control required"
											placeholder="Your name" data-placement="top"
											data-trigger="manual"
											data-content="Must be at least 3 characters long, and must only contain letters."
											type="text">
									</div>
									<div class="form-group">
										<label>Message</label>
										<textarea class="form-control"
											placeholder="Your message here.." data-placement="top"
											data-trigger="manual"></textarea>
									</div>
									<div class="form-group">
										<label>E-Mail</label><input class="form-control email"
											placeholder="email@you.com (so that we can contact you)"
											data-placement="top" data-trigger="manual"
											data-content="Must be a valid e-mail address (user@gmail.com)"
											type="text">
									</div>
									<div class="form-group">
										<label>Phone</label><input class="form-control phone"
											placeholder="999-999-9999" data-placement="top"
											data-trigger="manual"
											data-content="Must be a valid phone number (999-999-9999)"
											type="text">
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-success pull-right">Send
											It!</button>
										<p class="help-block pull-left text-danger hide"
											id="form-error">&nbsp; The form is not valid.</p>
									</div>
								</form>
							</div>
							<div class="modal-footer">
								<button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
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
                        <li>Facebook</li>
                        <li>Twitter</li>
                        <li>Google+</li>
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
       <script type="text/javascript" src="<c:url value="/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js" />"></script>
</body>
</html>