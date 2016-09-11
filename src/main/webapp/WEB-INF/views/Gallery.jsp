<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Products Gallery</title>
<meta  name="viewport" content="width=device-width, initial-scale=1">
<!--Link to bootstrap css should first -->
        <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"/>
        <!--First Look for the bootstrap css online if not present then use the below link-->              
       <link href="/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet"/>
       <style>.btn-group{margin-bottom:20px;}</style>

</head>
<body>
<%@include file="includes/Header.jsp"%>

<div class="well well-lg"><h1>Products Gallery</h1></div>
<div class="container" align="center">
 <div class="btn-group">
<a href="${session.getContextPath()}/MobileEstore/Honor_5X"><button class="btn">Honor 5X</button></a>
<a href="${session.getContextPath()}/MobileEstore/I_phone_SE"><button class="btn">Iphone SE</button></a>
<a href="${session.getContextPath()}/MobileEstore/Karbonn_Quattro_L50"><button class="btn">Karbonn Quattro L50</button></a>
<a href="${session.getContextPath()}/MobileEstore/Micromax_Canvas_Spark_3"><button class="btn">Micromax Canvas Spark 3</button></a>
<a href="${session.getContextPath()}/MobileEstore/Sony_Xperia_X_Dual"><button class="btn">Sony Xperia X Dual</button></a>
<a href="${session.getContextPath()}/MobileEstore/Xiaomi_Mi_Max"><button class="btn">Xiaomi Mi Max</button></a>
</div>
 </div>

 <%@include file="includes/Footer.jsp"%>
 

 <!--all the java scripts at the bottom-->
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
       
       <!-- Before laoding bootstrap.min.js we need JQUERY above 1.9 and below 3 -->
       <script src="<c:url value="/resources/JS/jquery-2.2.4.min.js"/>"></script>
       <!-- Loading  bootstrap.min.js file-->
        <script  src="<c:url value="/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js"/>"></script>
         <script src="https://cdn.jsdelivr.net/scrollreveal.js/3.3.1/scrollreveal.min.js"></script>
<script type="text/javascript">
	window.sr = ScrollReveal();
sr.reveal('.btn' , {duration:2000} , 1000 );
</script>
</body>
</html>