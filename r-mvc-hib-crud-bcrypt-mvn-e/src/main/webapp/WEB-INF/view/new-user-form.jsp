<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>Register User</title>
	</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			
		</div>
	</div>
	<div class="topnav">

 <a class="active" href="${pageContext.request.contextPath}/login/loginform">USER</a>
  <a href="${pageContext.request.contextPath}/login/newuser">ADMIN</a>
</div>

	<div id="container">
<div class="jumbotron" >
			<h1>My bank</h1>
		</div>
		<h2>Register User</h2>
	
		<form:form action="saveUser" modelAttribute="user" method="POST">
		
			<table>
				<tbody>
					<tr>
						<td><label>User name:</label></td>
						<td><form:input path="userName" /></td>
					</tr>
				
					<tr>
						<td><label>Password:</label></td>
						<td><form:input path="password" /></td>
						
                       
					</tr>
					


					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>
	
	<c:if test="${not empty msg}">
<p class="text-danger">
 ${msg}</p>
</c:if>
	</div>
<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/login/user"><h2>Back to HOME</h2></a>
		</p>
	
	</div>
		
		

</body>

</html>










