<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Asterix CRM System</title>
<link rel="stylesheet" type="text/css"
	href="../../resources/styles/common.css">
</head>
<body>

<table style="width:100%" border="0">
  <tr>
    <td align="left">Logged in: <sec:authentication property="principal.username"/></td>
    <td align="center"><a href="../main">Main page</a></td>
    <td align="right"><a href="../../j_spring_security_logout" > Log out</a></td>
  </tr>
</table> 
<hr>
