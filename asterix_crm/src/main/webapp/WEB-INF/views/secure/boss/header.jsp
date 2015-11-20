<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Asterix CRM System</title>
<link rel="stylesheet" type="text/css"
	href="../../resources/styles/common.css">
	<script>
	function changeToolSet(toolset) {
		window.location.href = "../"+toolset;
	}
	</script>
</head>
<body>
<!-- Roles display -->
<sec:authentication property="authorities" var="roles" scope="page" />
<!-- Yläpalkin aloitus -->
<div id="top">
<div id="logocontainer"><img src="../../resources/images/asterix_logo_lapinakyva.png" /></div>
<div id="loggedin">Logged in: <sec:authentication property="principal.username"/><br /><a href="../../j_spring_security_logout" > Log out</a></div>
</div>
<!-- Yläpalkin lopetus -->
<div id="navi">
<sec:authentication property="authorities" var="roles" scope="page" />
<div id="rolecontainer">

<c:choose>
    <c:when test="${fn:length(roles)>1}">
<select>
<option>Choose role</option>
		
		<sec:authorize access="hasRole('ROLE_ADMIN')">
			<option onClick="changeToolSet('admin/tools');">Admin tools</option>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_BOSS')">
			<option onClick="changeToolSet('boss/tools');">Boss tools</option>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_BILLER')">
			<p><a href="/biller/tools">Boss tools</a></p>		
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_SALESPERSON')">
			<p><a href="/salesperson/tools">Salesperson tools</a></p>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_TECHNICIAN')">
			<p><a href="/technician/tools">Technician tools</a></p>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_CUSTOMER_SERVANT')">
			<p><a href="/customerservant/tools">Customer servant tools</a></p>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_SECRETARY')">
			<p><a href="/secretary/tools">Secretary tools</a></p>
		</sec:authorize>
</select>
		    
    </c:when>
</c:choose>
</div>


<%@ include file="navi.jsp" %>
<!-- <ul> -->
<!-- 	<li><a href="#">Add user</a></li> -->
<!-- 	<li><a href="#">List users</a></li> -->
<!-- 	<li><a href="#">My profile</a></li>	 -->
<!-- 	<li><a href="../../j_spring_security_logout" > Log out</a></li> -->
<!-- </ul> -->


</div>
<div id="content">