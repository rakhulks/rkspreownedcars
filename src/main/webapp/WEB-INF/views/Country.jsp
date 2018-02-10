<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Country</title>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
</head>
<body>			
  
  
  
  <c:choose>
     <c:when test="${not empty AddCategoryButtonClicked}">    
     
      <%@include file="/WEB-INF/views/AddCountry.jsp" %>
     </c:when>
     
     <c:when test="${not empty ViewCategoryButtonClicked}">
       <%@include file="/WEB-INF/views/ViewCountry.jsp" %>
   
     </c:when>
     
     <c:when test="${not empty editCategoryClicked}">
       <%@include file="/WEB-INF/views/EditCountry.jsp" %>
   
     </c:when>
     
     </c:choose> 
     	
</body>
</html>