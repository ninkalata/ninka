<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<div id="nav-placeholder"></div>
 <script src="simple-slider.js"></script>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
</style>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>

<body>
<div class="topnav">

 <a  class="active"  href="${pageContext.request.contextPath}/login/loginform">USER</a>
  <a href="${pageContext.request.contextPath}/login/newuser">ADMIN</a>
</div>

	<h1>My bank</h1>
	<div id="wrapper">
		<div id="header">
			<h2 style="background-color: Violet;">CUSTOMER TABLE</h2>
		</div>
	</div>

	<div id="container">
		<h3 style="background-color: MediumSeaGreen;">Save Customer</h3>
	
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">
		<center>
			<table>
				<tbody>
					<tr>
						<td><font color="blue"><label>Customer Code:</label></font></td>
						<td><form:input path="code" /></td>
					</tr>
					<tr>
						<td><font color="blue"><label><spring:message code="lbl.customerName"/></label></font></td>
						<td><form:input path="customerName"/></td>
						<td><form:errors path="customerName" cssClass = "error" /></td>
					</tr>
						<tr>
						<td><font color="blue"><label><spring:message code="lbl.customerAddress"/></label></font></td>
						<td><form:input path="customerAddress" /></td>
						<td><form:errors path="customerAddress" cssClass = "error" /></td>
					</tr>
<tr>
						<td><font color="blue"><label><spring:message code="lbl.customerPinCode"/></label></font></td>
						<td><form:input path="customerPinCode" /></td>
						<td><form:errors path="customerPinCode" cssClass = "error" /></td>
					</tr>

<tr>
						<td><font color="blue"><label><spring:message code="lbl.customerEmail"/></label></font></td>
						<td><form:input path="customerEmail"/></td>
						<td><form:errors path="customerEmail" cssClass = "error" /></td>
					</tr>
					<tr>
						<td><font color="blue"><label> <spring:message code="lbl.contactNumber"/></label></font></td>
						<td><form:input path="contactNumber" /></td>
						<td><form:errors path="contactNumber" cssClass = "error" /></td>
					</tr>
					

					</tr>
					<tr>
						<td><font color="blue"><label><spring:message code="lbl.createdBy"/></label></font></td>
						<td><form:input path="createdBy" /></td>
							<td><form:errors path="createdBy" cssClass = "error" /></td>
					</tr>
					<tr>
						<td><font color="blue"><label><spring:message code="lbl.modifiedDate"/></label></font></td>
						<td><form:input path="modifiedDate" pattern="^([0-2]?\d|3[0-1])-(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)-\d{4}"
							title="invalid date" /></td>
					</tr>
					
					
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>
						

				
				</tbody>
			</table>
		</center>
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
		</p>
	
	</div>

</body>

</html>



