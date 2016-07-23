<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-us">
<head>
 <title>iPhone SE Gallery</title>
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
  <div class="well well-lg" ><h1>iPhone SE Gallery</h1></div>
    
    <div>
      <a class="example-image-link" href="<c:url value="/resources/imgs/I_phone_SE/apple_iphone_se_back_4.jpg" />" data-lightbox="I_phone_SE" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/I_phone_SE/apple_iphone_se_back_4_thumb.jpg" />" alt="apple_iphone_se_back_4_thumb.jpg"/></a>
      <a class="example-image-link" href="<c:url value="/resources/imgs/I_phone_SE/apple_iphone_se_back.jpg" />" data-lightbox="I_phone_SE" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/I_phone_SE/apple_iphone_se_back_thumb.jpg" />" alt="apple_iphone_se_back_thumb.jpg"/></a>
    <a class="example-image-link" href="<c:url value="/resources/imgs/I_phone_SE/apple_iphone_se_iphone_6s_iphone_6s_plus_2.jpg" />" data-lightbox="I_phone_SE" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/I_phone_SE/apple_iphone_se_iphone_6s_iphone_6s_plus_2_thumb.jpg" />" alt="apple_iphone_se_iphone_6s_iphone_6s_plus_2_thumb.jpg"/></a>
     <a class="example-image-link" href="<c:url value="/resources/imgs/I_phone_SE/apple_iphone_se_screen.jpg" />" data-lightbox="I_phone_SE" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/I_phone_SE/apple_iphone_se_screen_thumb.jpg" />" alt="apple_iphone_se_screen_thumb.jpg"/></a>
     <a class="example-image-link" href="<c:url value="/resources/imgs/I_phone_SE/apple_iphone_se_touch_id.jpg" />" data-lightbox="I_phone_SE" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/I_phone_SE/apple_iphone_se_touch_id_thumb.jpg" />" alt="apple_iphone_se_touch_id_thumb.jpg"/></a>
    </div>
    <div>
      <a class="example-image-link" href="<c:url value="/resources/imgs/I_phone_SE/apple_iphone_se_side.jpg" />" data-lightbox="I_phone_SE" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/I_phone_SE/apple_iphone_se_side_thumb.jpg" />" alt="apple_iphone_se_side_thumb"/></a>
      <a class="example-image-link" href="<c:url value="/resources/imgs/I_phone_SE/apple_iphone_se_touch_id.jpg" />" data-lightbox="I_phone_SE" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/I_phone_SE/apple_iphone_se_touch_id_thumb.jpg" />" alt="apple_iphone_se_touch_id_thumb.jpg"/></a>
    <a class="example-image-link" href="<c:url value="/resources/imgs/I_phone_SE/iphone_se_iphone_6s.jpg" />" data-lightbox="I_phone_SE" data-title="Click the right half of the image to move forward."><img class="example-image" src="<c:url value="/resources/imgs/I_phone_SE/iphone_se_iphone_6s_thumb.jpg" />" alt="iphone_se_iphone_6s_thumb.jpg"/></a>
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

</body>
</html>
