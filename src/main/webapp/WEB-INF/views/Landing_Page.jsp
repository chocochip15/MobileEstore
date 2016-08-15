<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Landing Page</title>
  
  <meta  name="viewport" content="width=device-width, initial-scale=1">
   <!--Link to bootstrap css should first and then followed by link to our own css-->
        <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"/>
        <!--First Look for the bootstrap css online if not present then use the below link-->              
       <link href="<c:url value="/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css"/>" rel="stylesheet"/>
       <link href="<c:url value='/resources/CSS/css_Landing_Page.css'/>" rel="stylesheet"/>
       <style>
    
.panel-body {
    height : 270px;
}
      .Container_carousel
      {
      
      margin-bottom: 20px;
      }
</style>
</head>
<body>

 <%@include file="includes/Header.jsp" %>  

  
     <!--Carousel-->
<div class="Container_carousel">        
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
                <img class="img-responsive center-block" src="<c:url value="/resources/imgs/apple1.jpg" />" alt="apple1.jpg" />
                </div>
                <div class="item">
                <img class="img-responsive center-block" src="<c:url value="/resources/imgs/apple2.png" />" alt="apple2.png" />
                </div>
                <div class="item">
                <img class="img-responsive center-block" src="<c:url value="/resources/imgs/htc.jpg" />" alt="htc.jpg" />
                </div>
                <div class="item">
                <img class="img-responsive center-block" src="<c:url value="/resources/imgs/nokia.jpg" />" alt="nokia.jpg" />
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
        <div class="panel-heading">Sony Xperia X Dual DEAL</div>
        <div class="panel-body"><img class="panelImages img-responsive" src="<c:url value="/resources/imgs/Sony_Xperia_X_Dual/sony_xperia_x_dual_main.jpg"/>" width="500px" style="width:100%" alt="Image"></div>
        <div class="panel-footer">GET 10% Discount</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">Xiaomi MI Max DEAL</div>
        <div class="panel-body"><img class="panelImages img-responsive" src="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_cover.jpg" />"  width="500px" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy MI MAX and get 5% discount</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-success">
        <div class="panel-heading">Iphone SE DEAL</div>
        <div class="panel-body"><img class="panelImages img-responsive" src="<c:url value="/resources/imgs/I_phone_SE/apple_iphone_se_screen.jpg"/>" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy a iphone SE and get POWER BANK</div>
      </div>
    </div>
  </div>
</div><br>




     <!--ending of footer-->
   <%@include file="includes/Footer.jsp" %> 
     <!--all the java scripts at the bottom-->
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
       
       <!-- Before laoding bootstrap.min.js we need JQUERY above 1.9 and below 3 -->
       <script src="<c:url value="/resources/JS/jquery-2.2.4.min.js"/>"></script>
       <!-- Loading  bootstrap.min.js file-->
        <script  src="<c:url value="/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js"/>"></script>
        
        


</body>
</html>

