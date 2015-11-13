<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page session="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Asterix CRM System</title>
<link rel="stylesheet" type="text/css"
	href="resources/styles/common.css">
<link rel="stylesheet" type="text/css"
	href="resources/styles/form.css">
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
<div id="logocontainer"><img src="resources/images/asterix.png" /></div>
</div>
<div id="navi">
<sec:authentication property="authorities" var="roles" scope="page" />
<div id="rolecontainer">
&nbsp;
</div>





</div>
<div id="content">
	<h1>Sign in</h1>

	<c:if test="${not empty loginerror}">
		<p class="Error">Login Failed. The username or password is incorrect.</p>
	</c:if>

	<c:if test="${not empty loggedout}">
		<p class="Info">You have been logged out.</p>
	</c:if>
	
	<form action="j_spring_security_check" method="post">
	<fieldset>
<div class='login_form_element'><label for="j_username">Username:</label><input type='text' name='j_username' value=''></div>
<div class='login_form_element'><label for="j_password">Password:</label><input type='password' name='j_password' /></div>
<button type="submit" id='login_form_submit'>Log in</button>
	</fieldset>
	</form>
	</div>
</body>
</html>