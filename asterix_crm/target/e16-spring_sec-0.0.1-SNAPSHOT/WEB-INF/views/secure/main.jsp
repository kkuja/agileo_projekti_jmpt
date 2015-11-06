<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pääsivu</title>
<link rel="stylesheet" type="text/css"
	href="../resources/styles/common.css">
</head>
<body>
<h1>Welcome <sec:authentication property="principal.username"/> to the Asterix CRM System</h1>

<%-- <h3>Sisäänkirjautuneena: <sec:authentication property="principal.username"/> Roolit: <sec:authentication property="principal.authorities"/></h3> --%>


<sec:authorize access="hasRole('ROLE_ADMIN')">
<p><a href="admin/tools">Admin tools</a></p>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_BOSS')">
<p><a href="boss/tools">Boss tools</a></p>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_BILLER')">
<p><a href="biller/tools">Biller tools</a></p>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_SALESPERSON')">
<p><a href="salesperson/tools">Salesperson tools</a></p>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_TECHNICIAN')">
<p><a href="technician/tools">Technician tools</a></p>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_CUSTOMER_SERVANT')">
<p><a href="customerservant/tools">Customer servant tools</a></p>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_SECRETARY')">
<p><a href="secretary/tools">Secretary tools</a></p>
</sec:authorize>
 
<p><a href="../j_spring_security_logout" > Log out</a></p>

</body>
</html>