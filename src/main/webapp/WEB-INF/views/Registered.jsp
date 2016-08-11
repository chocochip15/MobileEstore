<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registraion Confirmation</title>
<meta  name="viewport" content="width=device-width, initial-scale=1">
   <!--Link to bootstrap css should first -->
        <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"/>
        <!--First Look for the bootstrap css online if not present then use the below link-->              
       <link href="/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet"/>

</head>
<body>
<%@include file="includes/Header.jsp" %>
<h1>Succesfull Registration</h1>
<p>Thank you for registering yourself with us :) </p>
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