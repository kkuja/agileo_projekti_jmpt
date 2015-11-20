<%@ include file="header.jsp" %>

<h2>Tietokantaan lisättiin seuraava käyttäjä:</h2><br>
Username: ${webuser.username}<br>
Firstname: ${webuser.firstname} <br>
Lastname: ${webuser.lastname} <br>
Roolit:
	<c:forEach var="au" items="${webuser.authorities}">
		<%-- ${au.id}  --%> ${au.role}<br> 
	</c:forEach>

<%@ include file="../footer.jsp" %>