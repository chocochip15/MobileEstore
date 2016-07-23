<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>More Product Details </title>
 <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"/>
        <!--First Look for the bootstrap css online if not present then use the below link-->              
       <link href="<c:url value='/resources/CSS/css_Landing_Page.css' />" rel="stylesheet"/>
       <link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet"/>
       
 </head>
 <body>
<%@include file="includes/Header.jsp"%>
<div class="well well-lg"><h1>More Details of Products</h1></div>
<div class="table-responsive" >
<form:form modelAttribute="product" action="${session.getContextPath()}/MobileEstore/Order/${product.id}" commandName="product">

<h3>General</h3>
<table class="table table-hover">
	<tr>
		<th>Name
		</th>
		<th>Price
		</th>
		<th>Colours
		</th>
		<th>Weight
		</th>
		<th>Battery Capacity(mAh)
		</th>
		<th>Removable Battery
		</th>
		<th>Dimensions(mm)
		</th>
	</tr>
	<tr>
		<td>${product.name}</td>
		<td>${product.price}</td>
		<td>${prdouct.colours}</td>
		<td>${product.weight}</td>
		<td>${product.batteryCapacity}</td>
		<td>${product.removableBattery}</td>
		<td>${product.dimensions}<td>
	</tr>
</table>
<br>
<h3>Display</h3>
<table class="table table-hover">
	<tr>
		<th>Screen Size
		</th>
		<th>Touchscreen
		</th>
		<th>Resolution
		</th>
	</tr>
	<tr>
		<td>${product.screenSize}</td>
		<td>${product.touchScreen}</td>
		<td>${product.resolution}</td>
		
	</tr>
</table>
<br>
<h3>Hardware</h3>
<table class="table table-hover">
	<tr>
		<th>Processor
		</th>
		<th>RAM
		</th>
		<th>Intenal Storage
		</th>
		<th>Expandable Storage
		</th>
	</tr>
	<tr>
		<td>${product.processor}</td>
		<td>${product.ram}</td>
		<td>${product.internalStorage}</td>
		<td>${product.expandableStorage }</td>
	</tr>
</table>
<br>
<h3>Camera</h3>
<table class="table table-hover">
	<tr>
		<th>Front Camera
		</th>
		<th>Rear camera
		</th>
		<th>Flash
		</th>
	</tr>
	<tr>
		<td>${product.frontCamera}</td>
		<td>${product.rearCamera}</td>
		<td>${product.flash}</td>
	</tr>
</table>
<table class="table table-hover">
<h3>Others</h3>
<tr><th>Operating System</th></tr>

<tr><td>${product.operatingSystem}</td></tr>

</table>
</div>
<input type="submit" class="btn btn-primary" value="Add to Cart"/> 
</form:form></br>
<%@include file="includes/Footer.jsp"%>
 <!--all the java scripts at the bottom-->
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
       
       <!-- Before laoding bootstrap.min.js we need JQUERY above 1.9 and below 3 -->
       <script src="<c:url value="/resources/JS/jquery-2.2.4.min.js"/>"></script>
       <!-- Loading  bootstrap.min.js file-->
        <script  src="<c:url value="/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js"/>"></script>
</body>
</html>