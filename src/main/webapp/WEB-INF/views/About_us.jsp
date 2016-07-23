<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>About Us</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--Link to bootstrap css should first and then followed by link to our own css-->
        <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"/>
        <!--First Look for the bootstrap css online if not present then use the below link-->              
        <link href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet"/>
</head>
<body>
	<%@include file="includes/Header.jsp"%>
	<div class="container" align="center">
		<header>
		<h1>About Us</h1>
		</header>
		<h1>
			<p>An E-commerce site for selling mobile devices and accessories.</p>
		</h1>
		<h3>Description:</h3>
		<p>This site is built using different frameworks. For front end
			bootstrap & angularJs For back end Spring MVC and Hibernate . This
			site will manage end to end display and sale of its product. Customer
			can buy products online. Furthure employees can manage products and
			orders.</p>
	</div>
	<%@include file="includes/Footer.jsp"%>


</body>
</html>