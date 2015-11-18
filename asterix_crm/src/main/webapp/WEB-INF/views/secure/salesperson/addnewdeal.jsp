<%@ include file="header.jsp"%>
<!-- jsp:useBean id="deal" class="fi.asterix.JPA.Deal" scope="session" / -->
<h1>Add deal</h1>

<div id="addnewdeal">
	<form method="post" action="savedeal">
		<label for="salesperson">Sales person</label> <input type="text" name="salesperson"><br>
		<label for="technician">Technician</label> <input type="text" name="technician"><br>
		<label for="deliveryContract">Delivery contract</label> <input type="file" name="deliveryContract"><br>
		<label for="deliveryState">Delivery state</label> <select name="deliveryState"><option>draft</option><option>signed</option><option>delivered</option><option>expired</option></select><br>
		<label for="deliveryObjects">Delivery objects</label><br> <textarea cols=80 rows=8 name="deliveryObjects"></textarea><br>
		<label for="price">Price</label> <input type="number" min="0" name="price"><br><br>
		<label for="expirationDate">Expiration Date</label> <input type="datetime-local" name="expirationDate"><br><br>
		<label for="customer">Customer</label> <input type="text" name="customer"><br><br>
		<label for="notes">Notes</label><br> <textarea cols=80 rows=8  name="notes"></textarea><br><br>

		<button type="submit">Save</button>
	</form>
</div>
<%@ include file="../footer.jsp"%>