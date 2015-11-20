
<%@ include file="header.jsp" %>
<h1>Create new user account</h1>


<form:form method="POST" modelAttribute="newuser">
<fieldset>
<legend><b>Add new user</b></legend>
<table>
		<tr>
		<td><label for="username">Username: </label></td>
		<td><form:input path="username" id="username" /></td>	
	</tr>
	<tr>
		<td><label for="firstname">Firstname: </label></td>
		<td><form:input path="firstname" id="firstname" /></td>
		<td><form:errors path="firstname" cssClass="error" /></td>
	</tr>
	<tr>
		<td><label for="lastname">Lastname: </label></td>
		<td><form:input path="lastname" id="lastname" /></td>
		<td><form:errors path="lastname" cssClass="error" /></td>
	</tr>
	<tr>
		<td><label for="password_encrypted">Password: </label></td>
		<td><form:password path="password_encrypted" id="password_encrypted" /></td>
		<td><form:errors path="password_encrypted" cssClass="error" /></td>
	</tr> 

	<tr><td colspan="2"><h4>Select user roles:</h4></td></tr>
	<tr>
		<td><form:checkboxes path="authorities" id="authorities" items="${authorities}" /></td>
		<td><form:errors path="authorities" cssClass="error" /></td>
	</tr>
	
<%--  	<c:forEach var="r" items="${authorities}">
		<tr>
		<td><form:checkbox path="role.id" id="authorities" value="${r.id}"/></td>
		<td><label for="authorities">${r.role} </label></td>		
		<td><form:errors path="authorities" cssClass="error" /></td>		
		</tr>				
	</c:forEach> --%>	

	<tr>
		<td> <input type="hidden" name="enabled" value="1"> </td>
		<td><button type="submit">Add new user</button></td>
	</tr>		
</table>


</fieldset>
</form:form>

<%@ include file="../footer.jsp" %>