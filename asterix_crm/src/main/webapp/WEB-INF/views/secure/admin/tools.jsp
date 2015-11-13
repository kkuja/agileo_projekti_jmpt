
<%@ include file="header.jsp" %>
<h1>System administration</h1>
<h2>List of all roles</h2>
	<c:forEach var="rooli" items="${roolit}">
		<p>${rooli.id} ${rooli.role}</p>
	</c:forEach>
	
<%@ include file="../footer.jsp" %>