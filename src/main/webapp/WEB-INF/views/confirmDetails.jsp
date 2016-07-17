<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DETAILS CONFIRMATION</title>
</head>
<body>
 <div class="content">
   <fieldset>
    <legend>Confirm Details</legend>
    <!-- for triggering webflow evnts using links, the eventid to be triggered is given in "href" attribute as:-->
   <a href="${flowExecutionUrl}&_eventId_home ">Home</a>
   <form:form method="post" action="http://localhost:8080/MobileEstore/Registered" modelAttribute="customerDetails"  commandName="customerDetails">
  
   <table>
   <tr>
   <td><form:label path="custName">Customer Full Name</form:label></td>
   <td>${customerDetails.custName}</td>
   </tr>
   
   <tr>
   <td><form:label path="permanent_address">Permanent Address</form:label></td>
   <td>${customerDetails.permanent_address}</td>
   </tr>
   
   </table>  <tr>
   <td><form:label path="phone_no1">Mobile Phone NO.</form:label></td>
   <td>${customerDetails.phone_no1}</td>
   </tr>
   <tr>
   <td><form:label path="phone_no2">Alternative NO.</form:label></td>
   <td>${customerDetails.phone_no2}</td>
   </tr>
    <tr>
   <td><form:label path="email_id">Email_id</form:label></td>
   <td>${customerDetails.email_id}</td>
   </tr>
   
  <input name="_eventId_edit" type="submit" value="edit" /> 
  <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>
 <input name="_eventId_submit" type="submit" value="confirm Details" />
  <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/> 
   </form:form>
   </fieldset>
 </div>
</body>
</html>