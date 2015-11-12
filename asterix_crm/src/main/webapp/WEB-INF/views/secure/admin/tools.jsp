
<%@ include file="../header.jsp" %>
<h3>Welcome <sec:authentication property="principal.username"/> to the Asterix CRM System</h3>
<h1>Admin page</h1>
Ennen
	<c:forEach var="rooli" items="${roolit}">
		<p>${rooli.id} ${rooli.role}</p>
	</c:forEach>
Jälkeen
<%@ include file="../footer.jsp" %>