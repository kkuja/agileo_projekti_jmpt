<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>

<title>Henkilölistaus</title>
<link rel="stylesheet" type="text/css"
	href="../resources/styles/common.css">
<link rel="stylesheet" type="text/css"
	href="../resources/styles/form.css">
<link rel="stylesheet" type="text/css"
	href="../resources/styles/list.css">

</head>
<body>
	<h1>Henkilölistaus</h1>
	<table>
		<caption>Henkilöt</caption>
		<thead>
			<tr>
				<th>ID</th>
				<th>ETUNIMI</th>
				<th>SUKUNIMI</th>
				<th>delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${henkilot}" var="henk">
				<tr>
					<td><c:out value="${henk.id}" /></td>
					<td><c:out value="${henk.etunimi}" /></td>
					<td><c:out value="${henk.sukunimi}" /></td>
<%-- 					<td><a href='delete/${henk.id}'>delete</a></td> --%>
<td>&nbsp;</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>