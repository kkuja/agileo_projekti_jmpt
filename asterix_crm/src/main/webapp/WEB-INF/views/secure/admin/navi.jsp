<ul id="menu">
	<li><a href="tools">Admin frontpage</a></li>
	<li><a href="adduser">Add user</a></li>
	<li><a href="listusers">List users</a></li>
	<li><a href="#">My profile</a></li>	
	    <c:if test="${fn:length(roles)>1}">	
	    	<li><a href="../main">Main page</a></li>
	    </c:if>
	<li><a href="../../j_spring_security_logout" > Log out</a></li>
</ul> 

<!-- <table>
<tr>
	<td><a href="tools">Admin frontpage</a></td>
	<td><a href="adduser">Add user</a></td>
	<td><a href="listusers">List users</a></td>
	<td><a href="#">My profile</a></td>
	<td><a href="../../j_spring_security_logout" > Log out</a></td>
</tr>
</table> -->