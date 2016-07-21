<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Product Page</title>

</head>
 <!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script> -->
  <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"/>
 <script src="resources/angular-1.5.7/angular.min.js"></script>
        <script>
        
        var products=angular.module('products' , [])
        products.controller('productController', function($scope){$scope.productsjson=${data}});
        
 </script>
<body ng-app="products">
<%@include file="includes/Header.jsp" %> 
   <div class="container">
	<h1>List of Products</h1>
	<div ng-controller="productController">
	   
	  
	   <label>Search your product:<input ng-model="searchKeyword">
	   <div class="table-responsive">
	    <table class="table table-hover">
	    <tr>
        <th>Product Id</th>
        <th>Product Name</th>
         <th>Product price</th>
          <th>Product Description</th>
     </tr>	
<tr ng-repeat="product in productsjson|filter:searchKeyword">
	   <td><img src="resources/upload_images/{{product.id}}.jpg"/></td>
	   <td>{{product.id}}</td>
	   <td>{{product.name}}</td>
	   <td>{{product.price}}</td>
	   <td>{{product.description}}</td>
	   <td>
	   <form action="${session.getContextPath()}/MobileEstore/MoreDetails" method="post">
	   <button type="submit" value="More">More</button>
	   <input type="hidden" id="id" value="{{product.id}}" name="id"/>
	   <input type="hidden" id="name" value="{{product.name}}" name="name"/>
	   <input type="hidden" id="price" value="{{product.price}}"/>
	   <input type="hidden" id="description" value="{{product.description}}"/>
	   <input type="hidden" id="category" value="{{product.category}}"/>
	   <input type="hidden" id="touchScreen" value="{{product.touchScreen}}"/>
	   <input type="hidden" id="weight" value="{{product.weight}}"/>
	   <input type="hidden" id="batteryCapacity" value="{{product.batteryCapacity}}"/>
	   <input type="hidden" id="removableBattery" value="{{product.removableBattery}}"/>
	   <input type="hidden" id="colours" value="{{product.colours}}"/>
	   <input type="hidden" id="screenSize" value="{{product.screenSize}}"/>
	   <input type="hidden" id="resolution" value="{{product.resolution}}"/>
	   <input type="hidden" id="processor" value="{{product.processor}}"/>
	   <input type="hidden" id="internalStorage" value="{{product.internalStorage}}"/>
	   <input type="hidden" id="expandableStorage" value="{{product.expandableStorage}}"/>
	   <input type="hidden" id="operatingSystem" value="{{product.operatingSystem}}"/>
	   <input type="hidden" id="frontCamera" value="{{product.frontCamera}}"/>
	   <input type="hidden" id="rearCamera" value="{{product.rearCamera}}"/>
	   <input type="hidden" id="flash" value="{{product.flash}}"/>
	   </form>
	   </td>
	 </table>
	   </div>
	   
	 </div>
	 </div>
	<%-- <form:form method="POST" modelAttribute="productDetails" commandName="productDetails" action="${session.getContextPath()}/products/moreProducts/{id}">
		
		<table>
			<tr>
				<td>Enter the Product ID for which you want see MORE DETAILS</td>
				<td><form:input path="id" />
				</td>
				
			</tr>
			<tr>
				<td colspan="3"><input type="submit" value="More Details"/>
				</td>
			</tr>
		</table>
	</form:form> --%>
	 
	 <%@include file="includes/Footer.jsp" %>
	   
	


</body>
</html>