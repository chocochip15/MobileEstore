<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-us">
<head>
  <meta charset="utf-8">
  <title>Honor 5X Gallery</title>
   <meta  name="viewport" content="width=device-width, initial-scale=1">
<!--Link to bootstrap css should first -->
        <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"/>
        <!--First Look for the bootstrap css online if not present then use the below link-->              
       <link href="<c:url value="/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css"/>" rel="stylesheet"/>
  <link href="<c:url value="/resources/CSS/lightbox.min.css" />" rel="stylesheet"/>
  
  <style>.example-image{margin : 5px;}
  .lb-image, .lb-dataContainer {
 max-width: 100%;
 height: auto !important;
 width: 100%;
}

.lb-outerContainer {
 max-width: 100%;
 height: auto !important;
}</style>
</head>
<body>
<%@include file="includes/Header.jsp"%>

  <section>
    <div class="well well-lg"> <h1>Honor 5X Gallery</h1></div>
    <div>
      <a class="example-image-link" href="<c:url value="/resources/imgs/Honor_5X/honor_5x_4g.jpg" />" data-lightbox="Honor_5X" data-title="Click the right half of the image to move forward."><img class="example-image"  src="<c:url value="resources/imgs/Honor_5X/honor_5x_4g_thumb.jpg" />" alt="honor_5x_4g_thumb.jpg"/></a>
      <a class="example-image-link" href="<c:url value="/resources/imgs/Honor_5X/honor_5x_bottom.jpg" />" data-lightbox="Honor_5X" data-title="Click the right half of the image to move forward."><img class="example-image"  src="<c:url value="/resources/imgs/Honor_5X/honor_5x_bottom_thumb.jpg" />" alt="honor_5x_bottom_thumb.jpg"/></a>
    <a class="example-image-link" href="<c:url value="/resources/imgs/Honor_5X/honor_5x_buttons.jpg" />" data-lightbox="Honor_5X" data-title="Click the right half of the image to move forward."><img class="example-image"  src="<c:url value="/resources/imgs/Honor_5X/honor_5x_buttons_thumb.jpg" />" alt="honor_5x_buttons_thumb.jpg"/></a>
     <a class="example-image-link" href="<c:url value="/resources/imgs/Honor_5X/honor_5x_fingerprint.jpg" />" data-lightbox="Honor_5X" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Honor_5X/honor_5x_fingerprint_thumb.jpg" />" alt="honor_5x_fingerprint_thumb.jpg"/></a>
     <a class="example-image-link" href="<c:url value="/resources/imgs/Honor_5X/honor_5x_frontbottom.jpg" />" data-lightbox="Honor_5X" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Honor_5X/honor_5x_frontbottom_thumb.jpg" />" alt="honor_5x_frontbottom_thumb.jpg"/></a>
    </div>
    <div>
      <a class="example-image-link" href="<c:url value="/resources/imgs/Honor_5X/honor_5x_frontcam.jpg" />" data-lightbox="Honor_5X" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Honor_5X/honor_5x_frontcam_thumb.jpg" />" alt="honor_5x_frontcam_thumb.jpg"/></a>
      <a class="example-image-link" href="<c:url value="/resources/imgs/Honor_5X/honor_5x_logo.jpg" />" data-lightbox="Honor_5X" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Honor_5X/honor_5x_logo_thumb.jpg" />" alt="honor_5x_logo_thumb.jpg"/></a>
    <a class="example-image-link" href="<c:url value="/resources/imgs/Honor_5X/honor_5x_main.jpg" />" data-lightbox="Honor_5X" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Honor_5X/honor_5x_main_thumb.jpg" />" alt="honor_5x_main_thumb.jpg"/></a>
     <a class="example-image-link" href="<c:url value="/resources/imgs/Honor_5X/honor_5x_main2.jpg" />" data-lightbox="Honor_5X" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Honor_5X/honor_5x_main2_thumb.jpg" />" alt="honor_5x_main2_thumb.jpg"/></a>
     <a class="example-image-link" href="<c:url value="/resources/imgs/Honor_5X/honor_5x_main3.jpg" />" data-lightbox="Honor_5X" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Honor_5X/honor_5x_main3_thumb.jpg" />" alt="honor_5x_main3_thumb.jpg"/></a>
    </div>
     <div>
      <a class="example-image-link" href="<c:url value="/resources/imgs/Honor_5X/honor_5x_rearcam.jpg" />" data-lightbox="Honor_5X" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Honor_5X/honor_5x_rearcam_thumb.jpg" />" alt="honor_5x_rearcam_thumb.jpg"/></a>
      <a class="example-image-link" href="<c:url value="/resources/imgs/Honor_5X/honor_5x_trays.jpg" />" data-lightbox="Honor_5X" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Honor_5X/honor_5x_trays_thumb.jpg" />" alt="honor_5x_trays_thumb.jpg"/></a>
    
    </div>
 
  </section>

 <%@include file="includes/Footer.jsp"%>
 <!--all the java scripts at the bottom-->
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
       
       <!-- Before laoding bootstrap.min.js we need JQUERY above 1.9 and below 3 -->
       <script src="<c:url value="/resources/JS/jquery-2.2.4.min.js"/>"></script>
       <!-- Loading  bootstrap.min.js file-->
        <script  src="<c:url value="/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js"/>"></script>
  <script src="<c:url value="/resources/JS/lightbox-plus-jquery.min.js" />"></script>
         <script src="https://cdn.jsdelivr.net/scrollreveal.js/3.3.1/scrollreveal.min.js"></script>
<script type="text/javascript">
	window.sr = ScrollReveal();
sr.reveal('.example-image' , {duration:2000} , 1000 );
</script>

</body>
</html>
