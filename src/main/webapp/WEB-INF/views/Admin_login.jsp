<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Admin login Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1"> 
   <!--Link to bootstrap css should first and then followed by link to our own css-->
        <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"/>
        <!--First Look for the bootstrap css online if not present then use the below link-->              
       <link href="<c:url value="/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css"/>" rel="stylesheet"/>

</head>
<body>
	<%@include file="includes/Header.jsp"%>
	<!--login using spring security-->
	<div class="container" align="center">

		<form method="post" action="login" class="form-signin">
			<h2 class="form-signin-heading">Please login in</h2>
			<label for="inputEmail" class="sr-only">Email address</label> <input
				type="text" id="username" name="username" class="form-control"
				placeholder="UserName" required autofocus> <label
				for="inputPassword" class="sr-only">Password</label> <input
				type="password" id="password" name="password" class="form-control"
				placeholder="Password" required>

			<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
		</form>

	</div>


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