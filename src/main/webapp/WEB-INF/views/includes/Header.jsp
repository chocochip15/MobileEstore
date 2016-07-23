
       <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */
    .navbar {
      margin-bottom: 50px;
      border-radius: 0 !important;
    }
    
    /* Remove the jumbotron's default bottom margin */
     .jumbotron {
      margin-bottom: 0 !important;
         font-family:font-family: 'Indie Flower', cursive;
    }
      .jheader{
          font-family: 'Indie Flower', cursive;
      }
        

 
</style>
</head>

<body>
<div class="jumbotron ">
  <div class="container text-center">
     <%-- <img class="img" src="<c:url value="/resources/imgs/logo.png" />" alt="logo.png" /><sup class="brand-tag text-xs">beta</sup><br> --%>
     <img class="img" src="resources/imgs/logo.png" alt="logo.png" /><sup class="brand-tag text-xs">beta</sup><br>
    <p class="jheader">Only The orignal,fresh and trendy mobile devices for you</p>
  </div>
</div>

<nav class="navbar navbar-inverse" >
  
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="${session.getContextPath()}/MobileEstore/">Home</a>
    </div>
    <div class="collapse navbar-collapse" >
      <ul class="nav navbar-nav">
        <li class="active"><a href="${session.getContextPath()}/MobileEstore/products">Products</a></li>
        <li><a href="${session.getContextPath()}/MobileEstore/Sign_up">Sign Up</a></li>
        <li><a href="${session.getContextPath()}/MobileEstore/About_us">About Us</a></li>
         <li><a href="${session.getContextPath()}/MobileEstore/Gallery">Gallery</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="${session.getContextPath()}/MobileEstore/Admin_product"><span class="glyphicon glyphicon-user"></span> Admin Login</a></li>
      </ul>
  </div>
</nav>
