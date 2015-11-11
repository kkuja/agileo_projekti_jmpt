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
	href="../../resources/styles/common.css">
</head>
<body>
<!-- Roles display -->
<sec:authentication property="authorities" var="roles" scope="page" />
<table style="width:100%" border="0">
  <tr>
    <td align="left"><img src="../../resources/images/user.png" title=<sec:authentication property="principal.username"/>  style="width:40px;height:40px;"> Logged in as <sec:authentication property="principal.username"/></td>
<%-- <sec:authentication property="principal.username"/> --%>	
	<c:choose>
	    <c:when test="${fn:length(roles)>1}">    
    		<td align="left"><a href="../main">Main page</a></td>
    	</c:when> 
	</c:choose>     
    <td align="right"><a href="../../j_spring_security_logout" > Log out</a></td>
  </tr>
</table> 
<hr>
