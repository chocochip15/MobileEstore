<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<head>
<title>Product Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--Link to bootstrap css should first-->
<link rel="stylesheet" type="text/css"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
<!--First Look for the bootstrap css online if not present then use the below link-->
<link
	href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>"
	rel="stylesheet" />


<style type="text/css">
.tg {
	overflow: scroll; 
	display: block;
        overflow-x: auto;
	border-collapse : collapse;
	border-spacing: 0;
	border-color: #ccc;
	border-collapse: collapse;
	overflow: auto;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
</style>
</head>
<body>

	<div class="container-fluid">

		<%@include file="includes/Header.jsp"%>
		<div class="row">

			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h1>Add a Product</h1>
				<a href="<spring:url value="/j_spring_security_logout"/>">LOGOUT</a>
				<form:form
					action="http://localhost:8080/MobileEstore/Admin/product/add"
					modelAttribute="product" enctype="multipart/form-data"
					commandName="product">
					<table>
						<tr>
							<td><form:label path="id" class="form-group">
									<spring:message text="ID" />
								</form:label></td>
							<c:choose>
								<c:when test="${!empty product.id}">
									<td><form:input path="id" disabled="true" readonly="true" />
									</td>
								</c:when>

								<c:otherwise>
									<td><form:input path="id" patttern=".{6,7}"
											title="id should contains 6 to 7 characters" /></td>
								</c:otherwise>
							</c:choose>
						<tr>
							<form:input path="id" hidden="true" />
							<td><form:label path="name">
									<spring:message text="Name" />
								</form:label></td>
							<td><form:input path="name" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="price">
									<spring:message text="price" />
								</form:label></td>
							<td><form:input path="price" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="description">
									<spring:message text="Product Description" />
								</form:label></td>
							<td><form:input path="description" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="category">
									<spring:message text="Product Category" />
								</form:label></td>
							<td><form:input path="category" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="batteryCapacity">
									<spring:message text="Product Battery Capacity" />
								</form:label></td>
							<td><form:input path="batteryCapacity" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="removableBattery">
									<spring:message text="Product Removable Battery" />
								</form:label></td>
							<td><form:input path="removableBattery" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="colours">
									<spring:message text="Product Colours" />
								</form:label></td>
							<td><form:input path="colours" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="dimensions">
									<spring:message text="Product Dimensions" />
								</form:label></td>
							<td><form:input path="dimensions" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="expandableStorage">
									<spring:message text="Product Expandable Storage" />
								</form:label></td>
							<td><form:input path="expandableStorage" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="flash">
									<spring:message text="Product Flash" />
								</form:label></td>
							<td><form:input path="flash" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="frontCamera">
									<spring:message text="Product Front Camera" />
								</form:label></td>
							<td><form:input path="frontCamera" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="rearCamera">
									<spring:message text="Product Rear Camera" />
								</form:label></td>
							<td><form:input path="rearCamera" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="internalStorage">
									<spring:message text="Product Internal Storage" />
								</form:label></td>
							<td><form:input path="internalStorage" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="operatingSystem">
									<spring:message text="Product Operating System" />
								</form:label></td>
							<td><form:input path="operatingSystem" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="processor">
									<spring:message text="Product processor" />
								</form:label></td>
							<td><form:input path="processor" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="ram">
									<spring:message text="Product RAM" />
								</form:label></td>
							<td><form:input path="ram" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="resolution">
									<spring:message text="Product Resolution" />
								</form:label></td>
							<td><form:input path="resolution" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="screenSize">
									<spring:message text="Product Screen Size" />
								</form:label></td>
							<td><form:input path="screenSize" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="touchScreen">
									<spring:message text="Product Touch Screen" />
								</form:label></td>
							<td><form:input path="touchScreen" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="weight">
									<spring:message text="Product Weight
						" />
								</form:label></td>
							<td><form:input path="weight" required="true" /></td>
						</tr>
						<tr>
							<td>

								<div class="form-group">
									<form:label path="image">
										<spring:message text="Choose Image" />
									</form:label>

									<form:input path="image" type="file" class="form-control" />


								</div>

							</td>
						</tr>
						<tr>
							<td colspan="2"><c:if test="${!empty product.name}">
									<input type="submit" class="btn btn-primary"
										value="<spring:message text="Edit Product"/>" />
								</c:if> <c:if test="${empty product.name}">
									<input type="submit" class="btn btn-primary"
										value="<spring:message text="Add Product"/>" />
								</c:if></td>
						</tr>


					</table>
				</form:form>

			</div>
			<div class="col-md-2"></div>
		</div>
		<hr />
		<br>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<h3>Product List</h3>
				<c:if test="${!empty productList}">
					<table class="tg">
						<tr>
							<th width="80">Product ID</th>
							<th width="120">Product Name</th>
							<th width="120">Product Price</th>
							<th width="120">Product Description</th>
							<th width="120">Product Category</th>
							<th width="120">Product Battery Capacity</th>
							<th width="120">Product Removable Battery</th>
							<th width="120">Product Colours</th>
							<th width="120">Product Dimensions</th>
							<th width="120">Product Expandable Storage</th>
							<th width="120">Product Flash</th>
							<th width="120">Product Front Camera</th>
							<th width="120">Product Rear Camera</th>
							<th width="120">Product Internal Storage</th>
							<th width="120">Product Operating System</th>
							<th width="120">Product Processor</th>
							<th width="120">Product RAM</th>
							<th width="120">Product Resolution</th>
							<th width="120">Product Screen size</th>
							<th width="120">Product Touchscreen</th>
							<th width="120">Product Weight</th>



							<th width="60">Edit</th>
							<th width="60">Delete</th>
						</tr>
						<c:forEach items="${productList}" var="product">
							<tr>
								<td>${product.id}</td>
								<td>${product.name}</td>
								<td>${product.price}</td>
								<td>${product.description}</td>
								<td>${product.category}</td>
								<td>${product.batteryCapacity}</td>
								<td>${product.removableBattery}</td>
								<td>${product.colours}</td>
								<td>${product.dimensions}</td>
								<td>${product.expandableStorage}</td>
								<td>${product.flash}</td>
								<td>${product.frontCamera}</td>
								<td>${product.rearCamera}</td>
								<td>${product.internalStorage}</td>
								<td>${product.operatingSystem}</td>
								<td>${product.processor}</td>
								<td>${product.ram}</td>
								<td>${product.resolution}</td>
								<td>${product.screenSize}</td>
								<td>${product.touchScreen}</td>
								<td>${product.weight}</td>


								<td><a
									href="<c:url value='/Admin/product/edit/${product.id}' />">Edit</a></td>
								<td><a
									href="<c:url value='/Admin/product/remove/${product.id}'/>">Delete</a></td>
							</tr>
						</c:forEach>
					</table>
				</c:if>

			</div>
		</div>
	</div>
	<%@include file="includes/Footer.jsp"%>
	<!--all the java scripts at the bottom-->
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script type="text/javascript"
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<!-- Before laoding bootstrap.min.js we need JQUERY above 1.9 and below 3 -->
	<script src="<c:url value="/resources/JS/jquery-2.2.4.min.js"/>"></script>
	<!-- Loading  bootstrap.min.js file-->
	<script
		src="<c:url value="/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js"/>"></script>
</body>
</html>