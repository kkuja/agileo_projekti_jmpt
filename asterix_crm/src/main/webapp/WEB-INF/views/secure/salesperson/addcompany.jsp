<%@ include file="header.jsp"%>
<jsp:useBean id="company" class="fi.asterix.JPA.Company" scope="session" />
<h1>Add company</h1>

<div id="addcompany">
	<form method="post" action="savecompany">
		<label for="name">Company name</label> <input type="text" name="companyname"><br>
		<label for="streetAddress">Street</label> <input type="text" name="streetAddress"><br>
		<label for="postalCode">Postal code</label> <input type="number" name="postalCode"><br>
		<label for="postOffice">Post office</label> <input type="text" name="postOffice"><br>
		<label for="country">Country</label> <input type="text" name="country"><br><br>

		<button type="submit">Save</button>
	</form>
</div>
<%@ include file="../footer.jsp"%>