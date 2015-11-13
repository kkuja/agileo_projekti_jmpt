<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 

TÄMÄ TIEDOSTO EI OLE KÄYTÖSSÄ MUUALLA KUIN main.jsp

 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Asterix CRM System</title>
<link rel="stylesheet" type="text/css"
	href="../resources/styles/common.css">
	<script>
	function changeToolSet(toolset) {
		window.location.href = "../"+toolset;
	}
	</script>
</head>
<body>
<!-- Roles display -->
<sec:authentication property="authorities" var="roles" scope="page" />
<div id="top">
<div id="logocontainer"><img src="../resources/images/asterix.png" /></div>
<div id="loggedin">Logged in: <sec:authentication property="principal.username"/></div>
</div>
<div id="navi">
<sec:authentication property="authorities" var="roles" scope="page" />
<div id="rolecontainer">

<c:choose>
    <c:when test="${fn:length(roles)>1}">
<select>
<option>Choose role</option>
		
		<sec:authorize access="hasRole('ROLE_ADMIN')">
			<option onClick="changeToolSet('secure/admin/tools');">Admin tools</option>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_BOSS')">
			<option onClick="changeToolSet('secure/boss/tools');">Boss tools</option>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_BILLER')">
			<option onClick="changeToolSet('secure/biller/tools');">Biller tools</option>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_SALESPERSON')">
			<option onClick="changeToolSet('secure/salesperson/tools');">Salesperson tools</option>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_TECHNICIAN')">
			<option onClick="changeToolSet('secure/technician/tools');">Technician tools</option>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_CUSTOMER_SERVANT')">
			<option onClick="changeToolSet('secure/customerservant/tools');">Customer servant tools</option>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_SECRETARY')">
			<option onClick="changeToolSet('secure/secretary/tools');">Secretary tools</option>
		</sec:authorize>
</select>
		    
    </c:when>
</c:choose>
</div>




</div>
<div id="content">