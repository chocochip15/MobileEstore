<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myProducts">
<head>
<title>Products</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	 <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-rc.0/angular.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css" />" />
	 <script type="text/javascript" src="<c:url value="/resources/angular-1.5.7/angular.min.js" />"></script>
	
	<script type="text/javascript">
var myProducts = angular.module('myProducts', []);
myProducts.controller('ProductsCtrl', function($scope) {
	$scope.productslist = str;

});
</script>
</head>
<body ng-controller="ProductsCtrl">
	<h1>Products</h1>
<table>
<tr>
<th>Product Id</th>
<th>Product Name</th>
</tr>
<tr ng-repeat="indivisual in productslist">
<td>{{ individual.ProductId}}</td>
<td>{{ individual.ProductName}}</td>
</tr>
</table>
</body>
</html>
	
	

