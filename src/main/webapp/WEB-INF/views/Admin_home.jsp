<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>
</head>
<body>
	<%@include file="includes/Header.jsp"%>
	<%-- ${message} --%>
	<h4>Welcome Admin</h4>
	<br>

	<!-- <a href="getAllCategories"> Categories</a>  <br>
<a href="getAllSuppliers"> Suppliers</a>   <br> -->
	<a href="http://localhost:8080/MobileEstore/Admin/products">Add
		Products</a>
	<%@include file="includes/Footer.jsp"%>
</body>
</html>