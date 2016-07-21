<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Invalid Credentials</title>
</head>
<body>
	<%@include file="includes/Header.jsp"%>
	<div class="container" align="center">
		<h1>${message}</h1>
		<h2>Only Admin can login here</h2>
		Please Enter valid User Name and Password
	</div>
	<%@include file="includes/Footer.jsp"%>
</body>
</html>