<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title>Login page</title>
<link rel="stylesheet" href="resources/styles/common.css" type="text/css" />
<link rel="stylesheet" href="resources/styles/form.css" type="text/css" />
</head>
<body>
	<div id="sisalto">
	<h1>Sign in</h1>

	<c:if test="${not empty loginerror}">
		<p class="Error">Login Failed. The username or password is incorrect.</p>
	</c:if>

	<c:if test="${not empty loggedout}">
		<p class="Info">You have been logged out.</p>
	</c:if>
	
	<form action="j_spring_security_check" method="post">
	<fieldset>
		<table>
		<tr><td>Username:</td><td><input type='text' name='j_username' value=''></td></tr>
		<tr><td>Password:</td><td><input type='password' name='j_password' /></td></tr>
		<tr><td>&nbsp;</td><td align="center"><button type="submit">Sign in</button></td></tr>
		</table>
	</fieldset>
	</form>
	</div>
</body>
</html>