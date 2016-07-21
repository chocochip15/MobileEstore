<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Header</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome."/>
<link rel="stylesheet" type="text/css" href="/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css" />
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
         <li><a href="${session.getContextPath()}/MobileEstore/Gallery">Gallery</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="${session.getContextPath()}/MobileEstore/Admin/Admin_login"><span class="glyphicon glyphicon-user"></span> Admin Login</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>

</body>
</html>