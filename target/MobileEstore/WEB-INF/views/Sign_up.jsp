<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
    <head>
        <title>Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
 <body>
<%--   <div class="container" id="signUp">
     
   <div class="row">
   
    <form action="http://localhost:8080/MobileEstore/Registered" method="post" name="form1" role="form" >
     <div class = "form-group">
       
      <label for = "name">Name</label>
      <input type = "text" class = "form-control" id = "usr" placeholder = "Enter Email Address">
   </div>
        <div class = "form-group">
            <label for = "password">Passowrd</label>
            <input type="text" class="form-control" id="pwd"><br>
      </div>
      <div class = "form-group">
            <label for = "Address">Address</label>
            <input type="text" class="form-control" id="add"><br>
      </div>
      <div class = "form-group">
            <label for = "Phone_NO1">Phone NO.</label>
            <input type="text" class="form-control" id="pno1"><br>
      </div>
      <div class = "form-group">
            <label for = "Phone_NO2">Alternative Phone NO</label>
            <input type="text" class="form-control" id="pno2"><br>
      </div>
        <button type="submit" class="btn btn-primary">Register</button>
       </form>
      </div>
     </div> --%>
     
     <h1>Registration Form</h1>
  <form:form method="post" action="http://localhost:8080/MobileEstore/Registered" modelAttribute="customerDetails"  commandName="customerDetails">
  
   <table>
   <tr>
   <td><form:label path="custName">Customer Full Name</form:label></td>
   <td><form:input path="custName"/></td>
   </tr>
   
   <tr>
   <td><form:label path="permanent_address">Permanent Address</form:label></td>
   <td><form:input path="permanent_address"/></td>
   </tr>
   
   </table>  <tr>
   <td><form:label path="phone_no1">Mobile Phone NO.</form:label></td>
   <td><form:input path="phone_no1"/></td>
   </tr><tr>
   <td><form:label path="phone_no2">Alternative NO.</form:label></td>
   <td><form:input path="phone_no2"/></td>
   </tr>
   <input type="submit"/>
   
   </form:form>
    </body>
</html>