<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Product Page</title>
<!--Link to bootstrap css should first and then followed by link to our own css-->
        <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"/>
        <!--First Look for the bootstrap css online if not present then use the below link-->              
       <link href="<c:url value="/resources/CSS/css_Landing_Page.css" />" rel="stylesheet"/>
       <link href="<c:url value="/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css"/>" rel="stylesheet"/>
       <style>
       .imgs{
       width: 250px;
       height:250px;
       }
       
       </style>
</head>
 <!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script> -->
 
 <script src="resources/angular-1.5.7/angular.min.js"></script>
  <script>
        
        var products=angular.module('products' , [])
        products.controller('productController', function($scope){
        	$scope.productsjson=${data}
        	
        	$scope.orderByMe = function(x){
        		$scope.myOrderBy=x;
        	}
        });
        
        
 </script>
 
<body ng-app="products">
<%@include file="includes/Header.jsp" %> 
   <div class="container">
	<div class="well well-lg"> <h1>List of Products</h1></div>
	<div ng-controller="productController">
	   
	  
	   <label>Search your product:<input ng-model="searchKeyword"/></label><br/>
	   <div class="table-responsive">
	    <table class="table table-hover">
	    <tr>
	    <th>Product Image</th>
        <th ng-click="orderByMe('id')">Product Id</th>
        <th ng-click="orderByMe('name')">Product Name</th>
         <th ng-click="orderByMe('price')">Product Price</th>
          <th>Product Description</th>
          <th>More Details</th>
     </tr>	
<tr ng-repeat="product in productsjson|filter:searchKeyword | orderBy:myOrderBy">
	   <td><img class="imgs" src="resources/upload_images/{{product.id}}.jpg"/></td>
	   <td>{{product.id}}</td>
	   <td>{{product.name}}</td>
	   <td>{{product.price}}</td>
	   <td>{{product.description}}</td>
	   <td>
	   <form action="${session.getContextPath()}/MobileEstore/MoreDetails" method="post">
	   <button type="submit" value="More" class="btn btn-info">More</button>
	   <input type="hidden" id="id" value="{{product.id}}" name="id"/>
	   <input type="hidden" id="name" value="{{product.name}}" name="name"/>
	   <input type="hidden" id="price" value="{{product.price}}" name="price"/>
	   <input type="hidden" id="description" value="{{product.description}}" name="description"/>
	   <input type="hidden" id="category" value="{{product.category}}" name="category"/>
	   <input type="hidden" id="touchScreen" value="{{product.touchScreen}}" name="touchScreen"/>
	   <input type="hidden" id="dimensions" value="{{product.dimensions}}" name="dimensions"/>
	   <input type="hidden" id="weight" value="{{product.weight}}" name="weight"/>
	   <input type="hidden" id="batteryCapacity" value="{{product.batteryCapacity}}" name="batteryCapacity"/>
	   <input type="hidden" id="removableBattery" value="{{product.removableBattery}}" name="removableBattery"/>
	   <input type="hidden" id="colours" value="{{product.colours}}" name="colours"/>
	   <input type="hidden" id="screenSize" value="{{product.screenSize}}" name="screenSize"/>
	   <input type="hidden" id="resolution" value="{{product.resolution}}" name="resolution"/>
	   <input type="hidden" id="processor" value="{{product.processor}}" name="processor"/>
	   <input type="hidden" id="ram" value="{{product.ram}}" name="ram"/>
	   <input type="hidden" id="internalStorage" value="{{product.internalStorage}}" name="internalStorage"/>
	   <input type="hidden" id="expandableStorage" value="{{product.expandableStorage}}" name="expandableStorage"/>
	   <input type="hidden" id="operatingSystem" value="{{product.operatingSystem}}" name="operatingSystem"/>
	   <input type="hidden" id="frontCamera" value="{{product.frontCamera}}" name="frontCamera"/>
	   <input type="hidden" id="rearCamera" value="{{product.rearCamera}}" name="rearCamera"/>
	   <input type="hidden" id="flash" value="{{product.flash}}" name="flash"/>
	   </form>
	   </td>
	 </table>
	   </div>
	   
	 </div>
	 </div>

	 
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