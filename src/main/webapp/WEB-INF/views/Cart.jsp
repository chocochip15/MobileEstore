
<%@page import="org.apache.taglibs.standard.tag.common.xml.ForEachTag" isELIgnored="false"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head><title>Welcome To Cart</title>
<!--Link to bootstrap css should first and then followed by link to our own css-->
        <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"/>
        <!--First Look for the bootstrap css online if not present then use the below link-->              
       <link href="<c:url value="/resources/CSS/css_Landing_Page.css" />" rel="stylesheet"/>
       <link href="<c:url value="/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css"/>" rel="stylesheet"/>
</head>
<body>
       <%@ include file="includes/Header.jsp"%>


 
 
<%-- <script src="<c:url value="${btstrpjs }/angular.min.js"/>"></script>
<script>
  function delete1(id)
{
       alert("hi");
       window.location="http://localhost:8080/autobazaar/delete/"+id;
      
       } 
</script>
 --%><p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

 
<div  class="container">
       <div>
 
 
 
 
             <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                           <sf:form modelAttribute="product" method="post">
 
                                 <c:set var="s" value="0"></c:set>
 
                                 <table class="table table-striped">
                                        <thead>
                                               <tr>
 
                                                     <th>Name</th>
                                                     <th>Brand</th>
                                                     <th>Description</th>
                                                    
                                                     <th>Quantity</th>
                                                     <th>Amount</th>
                                                     <th>Delete Order</th>
                                               </tr>
                                        </thead>
 
                                        <tbody>
 
 
                                              <%--  <c:forEach items="${sessionScope.cart.listitem}" var="product">
                                               <c:set var="sum" value="${sum+ product.p.pprice* product.quantity}"></c:set>
                                               --%>       <tr>
                                                           
                                                            <td>${product.name}</td>
                                                            <td>${product.price}</td>
                                                            <td>${product.description}</td>
                                                            
                                                            <td></td>
                                                           
                                                            <td><%-- <a class="btn btn-danger"
                                                     href="<c:url value='${session.getContextPath()}/delete/${product.p.pid}' />">Delete  <span class="glyphicon glyphicon-remove-sign"></span></a></td>
                                                                 --%>  
                                                                   <!-- <td><button class="btn btn-danger" name="_eventId_edit">Delete</button></td> -->
                                                            <%--   <sf:input type="hidden" path="product.p.pid"></sf:input> --%>
                                                     </tr>
                                              <%--  </c:forEach> --%>
                                              
                                               <tr>
                                               <td></td>
                                               <td></td>
                                               <td></td>
                                               <td></td>
                                               <td>
                                               Total Amount:
                                               </td>
                                               <%-- <td> ${sum}</td> --%>
                                              
                                               </tr>
 
                                               <%-- <tr>
                                                     <td>${product.pname}</td>
                                                      <td>${product.pbrand}</td>
                                                      <td>${product.pdescription}</td>
                                                      <td>${product.pprice}</td>
                                                     <td>1</td>
                                                      <td>${product.pprice*1}</td>
                                               </tr> --%>
 
                                        </tbody>
 
                                 </table>
                                 <div class="row">
                                        <div class="col-md-4"></div>
                                        <div class="col-md-4"></div>
                                        <div class="col-md-4">
                                               <%-- <sf:input type="hidden" path="pid"></sf:input> --%>
                                               <input class="btn btn-info" name="_eventId_submit" type="submit"
                                                     value="Next" />
                                        </div>
                                 </div>
                                 <br />
 
                           </sf:form>
 
                    </div>
             </div>
 
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
