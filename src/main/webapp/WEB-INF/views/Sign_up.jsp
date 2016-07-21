<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<%@include file="includes/Header.jsp"%>
	<div class="container">
		<div class="content">
			<fieldset>
				<legend>Registration Form</legend>
				<a href="${flowExecutionUrl}&_eventId_home ">Home</a>
				<form:form method="post" modelAttribute="customerDetails"
					commandName="customerDetails">
					<table>
						<tr>
							<td><form:label path="custName">Customer Full Name</form:label></td>
							<td><form:input path="custName" /></td>
						</tr>

						<!-- to display validate message -->
						<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('custName')}"
							var="err">
							<div>
								<span>${err.text}</span>
							</div>
						</c:forEach>

						<tr>
							<td><form:label path="permanent_address">Permanent Address</form:label></td>
							<td><form:input path="permanent_address" /></td>
						</tr>
						<!-- to display validate message -->
						<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('permanent_address')}"
							var="err">
							<div>
								<span>${err.text}</span>
							</div>
						</c:forEach>

						<tr>
							<td><form:label path="phone_no1">Mobile Phone NO.</form:label></td>
							<td><form:input path="phone_no1" /></td>
						</tr>

						<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('phone_no1')}"
							var="err">
							<div>
								<span>${err.text}</span>
							</div>
						</c:forEach>
						<tr>
							<td><form:label path="phone_no2">Alternative NO.</form:label></td>
							<td><form:input path="phone_no2" /></td>

							<!-- to display validate message -->
							<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('phone_no2')}"
								var="err">
								<div>
									<span>${err.text}</span>
								</div>
							</c:forEach>

							<td><form:label path="email_id">Email_ID</form:label></td>
							<td><form:input path="email_id" /></td>
						</tr>
						<!-- to display validate message -->
						<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('email_id')}"
							var="err">
							<div>
								<span>${err.text}</span>
							</div>
						</c:forEach>
					</table>
					<input name="_eventId_submit" type="submit" value="submit" />
					<input type="hidden" name="_flowExecutionKey"
						value="${flowExecutionKey}" />
				</form:form>
			</fieldset>
		</div>
	</div>

	<%@include file="includes/Header.jsp"%>
</body>
</html>