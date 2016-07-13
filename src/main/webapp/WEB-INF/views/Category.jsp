<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Categories</title>
</head>
<body>


<div class="container">
  <div class="row-fluid">
   <div class="span12">

	<h1>Add a Category</h1>

	<c:url var="addAction" value="/category/add"></c:url>

	<form:form action="${addAction}" commandName="category">         <!--category is instance of class-->
		<table>
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />                   <!--lable for id-->
					</form:label></td>
				<c:choose>
					<c:when test="${!empty category.id}">
						<td><form:input path="id" disabled="true" readonly="true" />           <!--id condition  editable or not-->
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" pattern =".{6,7}" required="true" title="id should contains 6 to 7 characters" /></td>
						               <!-- in {min no fo char , max no of char}-->
					</c:otherwise>
				</c:choose>  <!--over add category-->
			<tr>
			<form:input path="id" hidden="true"  />
				<td><form:label path="name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="name" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="description">
						<spring:message text="Description" />
					</form:label></td>
				<td><form:input path="description" required="true" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty category.name}">       <!--colspan="1" by defult -->
						<button class="btn btn-primary" 
                                       onclick="location.href='${message}'">Edit Category</button>        <!-- button-->
					</c:if> <c:if test="${empty category.name}">                                <!--empty minimum new, list will not display-->
						<button class="btn btn-primary" 
                                       onclick="location.href='${message}'">Add Category</button>
					</c:if></td>
			</tr>
		</table>
	</form:form>
	</div>
	</div>
	</div>
	
	<br>
<div class="container">
	<h3>Category List</h3>
	<c:if test="${!empty categoryList}">   <!--categoryList get from controller-->
		<table class=" table table-bordered table-hover table-condensed ">
			<tr>
				<th width="80">Category ID</th>
				<th width="120">Category Name</th>
				<th width="120">Category Description</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${categoryList}" var="category">       <!-- c:forEach is  -->
				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>
					<td><a href="<c:url value='category/edit/${category.id}' />"><button type="button" class="btn btn-success">Edit</button></a></td>     <!-- category/edit is in method for edit it is in category controller -->
					<td><a href="<c:url value='category/remove/${category.id}' />"><button type="button" class="btn btn-danger">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>
</body>
</html>