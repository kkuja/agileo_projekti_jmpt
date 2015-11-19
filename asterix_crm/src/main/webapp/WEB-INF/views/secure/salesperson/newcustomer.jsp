<%@ include file="header.jsp" %>

<h3>Welcome <sec:authentication property="principal.username"/> to the Asterix CRM System</h3>
<h1>Salesperson page</h1>
    
    <p>This page is a placeholder for add user functionality.</p>
    
    <h2>Add new customer</h2>

	<form:form method="POST" modelAttribute="customer">

		<table>
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
				<td><label for="email">Email: </label></td>
				<td><form:input path="email" id="email" /></td>
				<td><form:errors path="email" cssClass="error" /></td>
			</tr>
			<tr>
				<td><label for="phone">Phone: </label></td>
				<td><form:input path="phone" id="phone" /></td>
				<td><form:errors path="phone" cssClass="error" /></td>
			</tr>
			<tr>
				<td><label for="photo">Photo: </label></td>
				<td><form:input path="photo" id="photo" /></td>
				<td><form:errors path="photo" cssClass="error" /></td>
			</tr>
			<tr>
				<td><label for="company">Company: </label></td>
				<td><form:input path="company.id" id="company" value="" /></td>
				<td><form:errors path="company" cssClass="error" /></td>
			</tr>
			<tr>
				<td><label for="addess">Address: </label></td>
				<td><form:input path="addess.id" id="addess" value=""/></td>
				<td><form:errors path="addess" cssClass="error" /></td>
			</tr>

			<!-- jatkokehityksestä: Tässä pitäisi hakea salesPersonit kannasta ja valita niistä yksi -->
			<tr>
				<td><label for="salesPerson">Salesperson: </label></td>
				<td><form:input path="salesPerson.id" id="salesPerson" /></td>
				<td><form:errors path="salesPerson" cssClass="error" /></td>
			</tr>
			<tr>
				<td><label for="customerState">Customer's state: </label></td>
				<td><form:input path="customerState.id" id="customerState" value="" /></td>
				<td><form:errors path="customerState" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td><input type="submit" value="add new"  /></td>
			</tr>

		</table>
	</form:form>
	
<%@ include file="../footer.jsp" %>