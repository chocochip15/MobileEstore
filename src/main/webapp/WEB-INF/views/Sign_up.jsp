<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Registraion Form</title>
<meta  name="viewport" content="width=device-width, initial-scale=1">
   <!--Link to bootstrap css should first -->
        <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"/>
        <!--First Look for the bootstrap css online if not present then use the below link-->              
       <%-- <link href="<c:url value="/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css"/>" rel="stylesheet"/> --%>
	<style>.container{
	align:center;
	margin-bottom: 20px;
	}
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
	</style>
</head>
<body>
	<%@include file="includes/Header.jsp"%>
	
	<div class="well well-lg"><h1>Registraion Form</h1></div>
	
	<div class="container">
		
		
			<div class="table-responsive">
			<form:form method="post" class="form-group" modelAttribute="customerDetails"
					commandName="customerDetails" action="${session.getContextPath()}/MobileEstore/Register">
					<table class="table table-hover">
					
					    <tr>
							<td><form:label path="cust_id">Customer ID</form:label></td>
							<td><form:input path="cust_id" /></td>
							<td><form:errors path="cust_id" cssClass="error" /></td>
						</tr>
						<tr>
							<td><form:label path="custName">Customer Full Name</form:label></td>
							<td><form:input path="custName" /></td>
							<td><form:errors path="custName" cssClass="error" /></td>
						</tr>

						

						<tr>
							<td><form:label path="permanent_address">Permanent Address</form:label></td>
							<td><form:input path="permanent_address" /></td>
							<td><form:errors path="permanent_address" cssClass="error" /></td>
						</tr>
						

						<tr>
							<td><form:label path="phone_no1">Mobile Phone NO.</form:label></td>
							<td><form:input path="phone_no1" /></td>
							<td><form:errors path="phone_no1" cssClass="error" /></td>
						</tr>

						
						<tr>
							<td><form:label path="phone_no2">Alternative NO.</form:label></td>
							<td><form:input path="phone_no2" /></td>
							<td><form:errors path="phone_no2" cssClass="error" /></td>
                        </tr>
						<tr>
							<td><form:label path="email_id">Email_ID</form:label></td>
							<td><form:input path="email_id" /></td>
							<td><form:errors path="email_id" cssClass="error" /></td>
						</tr>
						<tr>
				           <td colspan="3"><input type="submit" class="btn btn-primary" /></td>
			            </tr>
					</table>					
				</form:form>
	
			</div>
					
		
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