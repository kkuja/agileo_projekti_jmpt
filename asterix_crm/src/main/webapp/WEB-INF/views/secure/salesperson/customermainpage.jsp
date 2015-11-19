<%@ include file="header.jsp" %>
<h3>Welcome <sec:authentication property="principal.username"/> to the Asterix CRM System</h3>
<h1>Salesperson page</h1>
    
    <p>This page is a placeholder for add user functionality.</p>
    
    <a href="newcustomer">Add new customer</a>
    
    <h2>List of all customers</h2>
    <c:forEach var="customer" items="${customers}">
    	<p>${customer.lastname} ${customer.firstname} ${customer.addess.streetAddress} ${customer.salesPerson.webuser.username}</p>
	</c:forEach>
	
<%@ include file="../footer.jsp" %>