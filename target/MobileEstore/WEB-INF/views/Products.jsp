<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false" isELIgnored="false" %>
<html>
<head>
<title>Product Page</title>

</head>
 <!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script> -->
 <script src="resources/angular-1.5.7/angular.min.js"></script>
        <script>
        
        var products=angular.module('products' , [])
        products.controller('productController', function($scope){$scope.productsjson=${data}});
        
 </script>
<body ng-app="products">
	<h1>List of Products</h1>
	<div ng-controller="productController">
	   
	  
	   <label>Search your product:<input ng-model="searchKeyword">
	   <div class="table-responsive">
	    <table clas="table">
	    <tr>
        <th>Product Id</th>
        <th>Product Name</th>
         <th>Product price</th>
          <th>Product Description</th>
     </tr>	
<tr ng-repeat="product in productsjson|filter:searchKeyword">
	   <td>{{product.id}}</td>
	   <td>{{product.name}}</td>
	   <td>{{product.price}}</td>
	   <td>{{product.descripion}}</td>
	   
	 </table>
	   </div>
	   
	 </div>
	   
	


</body>
</html>