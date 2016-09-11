<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-us">
<head>
  <title>Xiaomi Mi Max Gallery</title>
   <meta  name="viewport" content="width=device-width, initial-scale=1">
  <!--Link to bootstrap css should first -->
        <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"/>
        <!--First Look for the bootstrap css online if not present then use the below link-->              
       <link href="<c:url value="/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css"/>" rel="stylesheet"/>
  <link href="<c:url value="/resources/CSS/lightbox.min.css" />" rel="stylesheet"/>
  <style>.example-image{margin : 5px}
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
     <div class="well well-lg" ><h1>Xiaomi Mi Max Gallery</h1><div class="well well-lg" >

    <div>
      <a class="example-image-link" href="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_back.jpg" />" data-lightbox="Xiaomi_Mi_Max" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_back_thumb.jpg" />" alt="xiaomi_mi_max_back_thumb.jpg"/></a>
      <a class="example-image-link" href="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_button.jpg" />" data-lightbox="Xiaomi_Mi_Max" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_button_thumb.jpg" />" alt="xiaomi_mi_max_button_thumb.jpg"/></a>
      <a class="example-image-link" href="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_camera.jpg" />" data-lightbox="Xiaomi_Mi_Max" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_camera_thumb.jpg" />" alt=""/></a>
      <a class="example-image-link" href="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_capacitive.jpg" />" data-lightbox="Xiaomi_Mi_Max" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_capacitive_thumb.jpg" />" alt="xiaomi_mi_max_capacitive_thumb.jpg"/></a>
      <a class="example-image-link" href="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_chrager.jpg" />" data-lightbox="Xiaomi_Mi_Max" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_chrager_thumb.jpg" />" alt="xiaomi_mi_max_chrager_thumb.jpg"/></a>
    </div>
    <div>
      <a class="example-image-link" href="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_cover.jpg" />" data-lightbox="Xiaomi_Mi_Max" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_cover_thumb.jpg" />" alt="xiaomi_mi_max_cover_thumb.jpg"/></a>
      <a class="example-image-link" href="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_ir.jpg" />" data-lightbox="Xiaomi_Mi_Max" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_ir_thumb.jpg" />" alt="xiaomi_mi_max_ir_thumb.jpg"/></a>
      <a class="example-image-link" href="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_port.jpg" />" data-lightbox="Xiaomi_Mi_Max" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_port_thumb.jpg" />" alt="xiaomi_mi_max_port_thumb.jpg"/></a>
      <a class="example-image-link" href="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_screen.jpg" />" data-lightbox="Xiaomi_Mi_Max" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_screen_thumb.jpg" />" alt="xiaomi_mi_max_screen_thumb.jpg"/></a>
      <a class="example-image-link" href="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_sim.jpg" />" data-lightbox="Xiaomi_Mi_Max" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_sim_thumb.jpg" />" alt="xiaomi_mi_max_sim_thumb.jpg"/></a>
    </div>
    <div>
      <a class="example-image-link" href="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_thickness.jpg" />" data-lightbox="Xiaomi_Mi_Max" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/Xiaomi_Mi_Max/xiaomi_mi_max_thickness_thumb.jpg" />" alt="xiaomi_mi_max_thickness_thumb.jpg"/></a>
    
      
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




