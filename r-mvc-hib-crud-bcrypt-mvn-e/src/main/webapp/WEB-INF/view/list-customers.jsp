<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>

<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<div id="nav-placeholder"></div>
<script src="simple-slider.js"></script>
<link href="simple-slider.css" rel="stylesheet" type="text/css" />

<script>
	$(function() {
		$("#nav-placeholder").load("page.jsp");
	});
</script>
<title>List Customers</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<!-- 
Refresh page every 5 seconds -->
<script type="text/javascript">
	setInterval("my_function();", 10000);

	function my_function() {
		window.location = location.href;
	}
</script>
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
<!-- reference our style sheet -->

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">


</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Customer Table</h2>
		</div>
	</div>
	<div class="topnav">

 <a  class="active"  href="${pageContext.request.contextPath}/login/loginform">USER</a>
  <a href="${pageContext.request.contextPath}/login/newuser">ADMIN</a>
</div>

	<div id="container">

		<div id="content">

			<!-- put new button: Add Customer -->

			<input type="button" value="Add Customer" class="btn btn-danger"
				onclick="window.location.href='showFormForAdd'; return false;"
				class="add-button" /><br />

		</div>

		<!--  add our html table here -->
		<table border="1" cellpadding="5">

			<tr>
				<th bgcolor="gray"><spring:message code="lbl.customerName"/></th>
				<th bgcolor="gray"><spring:message code="lbl.customerAddress"/></th>
				<th bgcolor="gray"><spring:message code="lbl.customerPinCode"/></th>
				<th bgcolor="gray"><spring:message code="lbl.customerEmail"/></th>
				<th bgcolor="gray"><spring:message code="lbl.createdBy"/></th>
				<th bgcolor="gray"><spring:message code="lbl.registrationDate"/></th>
				<th bgcolor="gray"><spring:message code="lbl.createdBy"/></th>
				<th bgcolor="gray"><spring:message code="lbl.modifiedDate"/>
				<th>
			</tr>

			<!-- loop over and print our customers -->
			<c:forEach var="tempCustomer" items="${customers}">

				<!-- construct an "update" link with customer id -->
				<c:url var="updateLink" value="/customer/showFormForUpdate">
					<c:param name="customerCode" value="${tempCustomer.code}" />
				</c:url>


				<!-- construct an "delete" link with customer id -->
				<c:url var="deleteLink" value="/customer/delete">
					<c:param name="customerCode" value="${tempCustomer.code}" />
				</c:url>
				<tr>
					<td>${tempCustomer.customerName}</td>
					<td>${tempCustomer.customerAddress}</td>
					<td>${tempCustomer.customerPinCode}</td>
					<td>${tempCustomer.customerEmail}</td>
					<td>${tempCustomer.contactNumber}</td>
					<td>${tempCustomer.registrationDate}</td>
					<td>${tempCustomer.createdBy}</td>
					<td>${tempCustomer.modifiedDate}</td>

					<td>
						<!-- display the update link --> <a href="${updateLink}"
						onclick="if (!(confirm('Are you sure you want to edit this customer?'))) return false"
						class="btn btn-primary btn-sm">Edit</a> <a href="${deleteLink}"
						onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false"
						class="btn btn-danger btn-sm">Delete</a>
					</td>
				</tr>

			</c:forEach>

		</table>
		<br />
		<div class="w3-container">
			<a href="${pageContext.request.contextPath}/login/loginform"
				class="w3-button w3-black">LOGOUT</a>
		</div>

	</div>

	</div>


</body>

</html>









