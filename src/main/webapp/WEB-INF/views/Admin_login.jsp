<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Admin login Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!--Link to bootstrap css should first and then followed by link to our own css-->
<link rel="stylesheet" type="text/css"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<!--First Look for the bootstrap css online if not present then use the below link-->
<link rel="stylesheet" type="text/css"
	href=/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css>

</head>
<body>
	<%@include file="includes/Header.jsp"%>

	<!-- login using isvaliduser() -->
	<%--   <div class=""container>
   
  <form:form method="post" action="http://localhost:8080/MobileEstore/isValidUser" class="form-signin" modelAttribute="user" commandName="user" >
  <h2 class="form-signin-heading">Admin Login</h2>
   <table>
   <tr>
   <td><form:label path="userId" >ADMIN ID</form:label></td>
   <td><form:input path="userId" class="form-control" placeholder="Admin ID"  /></td>
   </tr>
   
   <tr>
   <td><form:label path="userPassword">Admin Password</form:label></td>
   <td><form:input path="userPassword"  type="password"  class="form-control" placeholder="Password" /></td>
   </tr>
  </table>
    <input class="btn btn-lg btn-primary btn-block" type="submit" align="center"/>
   </form:form>
  </div>
      --%>
	<!--login using spring security-->
	<div class="container" align="center">

		<form method="post" action="login" class="form-signin">
			<h2 class="form-signin-heading">Please login in</h2>
			<label for="inputEmail" class="sr-only">Email address</label> <input
				type="text" id="username" name="username" class="form-control"
				placeholder="Email address" required autofocus> <label
				for="inputPassword" class="sr-only">Password</label> <input
				type="password" id="password" name="password" class="form-control"
				placeholder="Password" required>

			<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
		</form>

	</div>


	<%@include file="includes/Footer.jsp"%>
	<!--all the java scripts at the bottom-->
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script type="text/javascript"
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<!--If Cdn for the script is not available then use this local link-->
	<script type="text/javascript"
		src=/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js></script>
	<script type="text/javascript"
		src=/js/jqueryUI-AutoComplete/jquery-1.9.1.js></script>

</body>
</html>