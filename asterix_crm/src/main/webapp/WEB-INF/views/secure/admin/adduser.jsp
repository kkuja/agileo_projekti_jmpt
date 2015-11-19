
<%@ include file="header.jsp" %>
<h1>Add user</h1>

<div id="adduser">
	<form method="post" action="tools">
	<fieldset>
	<legend>Add new user:</legend>
	<table>
		<tr>
			<td><label for="name">Username</label></td>
			<td><input type="text" name="username"></td>
		</tr>
		<tr>
			<td><label for="firstname">Firstname</label></td>
			<td> <input type="text" name="firsname"></td>
		</tr>
		<tr>
			<td><label for="lastname">Lastname</label></td>
			<td> <input type="text" name="lastname"></td>
		</tr>
		<tr>
			<td><label for="password">Password</label></td>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td><label for="password2">Confirm password</label></td>
			<td><input type="password" name="password2"></td>
		</tr>
		
		<c:forEach var="r" items="${roolit}">
			<tr>
				<td><input type="checkbox" name="vehicle" value="Bike"></td><td> ${r.role}</td>	
			</tr>				
		</c:forEach>	

		<tr>
			<td>&nbsp;</td>
			<td><button type="submit">Add new user</button></td>
		</tr>		
	</table>
	
	
	</fieldset>
	</form>
</div>

<%@ include file="../footer.jsp" %>