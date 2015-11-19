
<%@ include file="header.jsp" %>
<h1>Asterix users</h1>

<table border="2">
  <tr>
    <th>Username</th>
    <th>Firstname</th>
    <th>Lastname</th>
    <th>Roles</th>
  </tr>
	<c:forEach var="user" items="${users}">
		<tr>
			<td>
				${user.username}
			</td>
			<td>
				${user.firstname}
			</td>
			<td>
				${user.lastname} 
			</td>
			<td>
				<c:forEach var="au" items="${user.authorities}">
					${au.role}, 
				</c:forEach>
			</td>
		</tr>
	</c:forEach>	
</table>
	
	<%-- ${user.authorities} --%>

<%@ include file="../footer.jsp" %>