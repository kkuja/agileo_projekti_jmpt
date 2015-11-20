<%@ include file="header.jsp" %>
<!-- <h3>Welcome <sec:authentication property="principal.username"/> to the Asterix CRM System</h3>
<h1>Salesperson page</h1>
    -->
    
    
    <h2>List of all customers</h2>
    
    <table>
    <tr>
		<td>
	    State
	    </td>
		<td>
	    Company
	    </td>
		<td>
	    Contact person
	    </td>
		<td>
	    Email
	    </td>
		<td>
	    Phone
	    </td>
		<td>
	    Photo file
	    </td>
		<td>
	    Address
	    </td>
		<td>
	    Sales person
	    </td>
    </tr>
	    <c:forEach var="customer" items="${customers}">
	    <tr>
    		<td>
		    ${customer.customerState.state} 
		    </td>
			<td>
		    ${customer.company.name} 
		    </td>
	    	<td>
	    	${customer.lastname} ${customer.firstname} 
	    	</td>
   			<td>
		    ${customer.email} 
		    </td>
    		<td>
		    ${customer.phone}
		    </td>
    		<td>
		    ${customer.photo}
		    </td>
	    	<td>
	    	${customer.addess.streetAddress}
	    	</td>
	    	<td>
	    	${customer.salesPerson.webuser.username}
	    	</td>
    	</tr>
	</c:forEach>
	</table>
	
<%@ include file="../footer.jsp" %>