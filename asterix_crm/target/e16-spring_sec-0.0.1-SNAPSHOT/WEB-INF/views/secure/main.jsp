<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Asterix CRM System</title>
<link rel="stylesheet" type="text/css"
	href="../resources/styles/common.css">
</head>
<body>

<table style="width:100%" border="0">
  <tr>
    <td align="left">Logged in: <sec:authentication property="principal.username"/></td>
    <td align="right"><a href="../j_spring_security_logout" > Log out</a></td>
  </tr>
</table> 
<hr>
<h3>Welcome <sec:authentication property="principal.username"/> to the Asterix CRM System</h3>

<%-- <h3>Sisäänkirjautuneena: <sec:authentication property="principal.username"/> Roolit: <sec:authentication property="principal.authorities"/></h3> --%>

<!-- Roles display -->
<sec:authentication property="authorities" var="roles" scope="page" />

<c:choose>
    <c:when test="${fn:length(roles)>1}">
		
		<sec:authorize access="hasRole('ROLE_ADMIN')">
			<p><a href="admin/tools">Admin tools</a></p>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_BOSS')">
			<p><a href="boss/tools">Boss tools</a></p>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_BILLER')">
			<p><a href="biller/tools">Boss tools</a></p>		
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
		    
    </c:when>
    
    <c:otherwise>
    
		<sec:authorize access="hasRole('ROLE_ADMIN')">
		    <%
		        String redirectURL = "admin/tools";
		        response.sendRedirect(redirectURL);
		    %>		
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_BOSS')">
		    <%
		        String redirectURL = "boss/tools";
		        response.sendRedirect(redirectURL);
		    %>		
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_BILLER')">
		    <%
		        String redirectURL = "biller/tools";
		        response.sendRedirect(redirectURL);
		    %>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_SALESPERSON')">
		    <%
		        String redirectURL = "salesperson/tools";
		        response.sendRedirect(redirectURL);
		    %>		
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_TECHNICIAN')">
		    <%
		        String redirectURL = "technician/tools";
		        response.sendRedirect(redirectURL);
		    %>		
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_CUSTOMER_SERVANT')">
		    <%
		        String redirectURL = "customerservant/tools";
		        response.sendRedirect(redirectURL);
		    %>		
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_SECRETARY')">
		    <%
		        String redirectURL = "secretary/tools";
		        response.sendRedirect(redirectURL);
		    %>		
		</sec:authorize>   
    </c:otherwise>    
</c:choose>    

<%@ include file="footer.jsp" %>