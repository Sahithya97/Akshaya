<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="fonts" value="/resources/fonts" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<style>
   body
   {
      background-image: url("${images}/bg.jpg");	
   }
   .col-lg-4col-md-6mb-4
   {
    background-color: #FC3019;
	color: #FFF;
   }
   .navbar
   {
    background-color: #FC3019;
   }
</style>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>The Book World</title>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/shop-homepage.css" rel="stylesheet">

</head>

<body bgcolor=red>

	<!-- Navigation -->
	<%@include file="Top.jsp" %>

	<!-- Page Content -->
	<c:if test="${userClickHome == true }">
		<%@include file="Home.jsp" %>
	</c:if>
	
	<c:if test="${onAbout==true}">
		<%@include file="About.jsp" %>
	</c:if>
	
	<!-- Footer -->
	<%@include file="End.jsp" %>

	<!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.bundle.min.js"></script>
	<script src="${js}/jquery.dataTables.js"></script>	

</body>

</html>
