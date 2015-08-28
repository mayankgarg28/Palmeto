<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="verizon.montoring.MonitoringDAO"%>
<%@page import="verizon.montoring.Ticket"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link href="styles.css" rel="stylesheet">
<link href="theme.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Generate Ticket</title>
<script>
	function filter(obj){
		obj.removeAttribute('href');
		alert('Ticket Generated');
	}
</script>

<style type="text/css">
a:visited {
	color:grey;
	text-decoration: none;
}
</style>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Monitoring Services</a>
			</div>
			<div>
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="DashBoard.jsp">DashBoard</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><span class="caret"></span>Search</a>
						<ul class="dropdown-menu">
							<li><a href="Location.jsp">Search By Location (zipcode)</a></li>
							<li><a href="Device.jsp">Search By Device</a></li>
							<li><a href="CustomerDetails.jsp">Search By Customer</a></li>
						</ul></li>
					<li class="MapView"><a href="map.html">MapView</a></li>
					<li class="Alerts"><a href="DeviceStatus.jsp">Alerts</a></li>
					<li class="Group Ticket"><a href="GroupTicket">Group
							Ticket</a></li>
					<li class="Log Out"><a href="MainPage.jsp">Log Out</a></li>
				</ul>
			</div>
		</div>
		</nav>
		<%
			List<Ticket> ticket = (List<Ticket>) request.getAttribute("ticket");
		%>
		<table class="vztable">
			<tr>
				<td>Service Id</td>
				<td>Zipcode</td>
				<td>#Device</td>
				<td>Generate Ticket</td>
			</tr>
			<c:forEach var="TicketDetails" items="${ticket}">
				<tr>
					<td><c:out value="${TicketDetails.serviceId}" /></td>
					<td><c:out value="${TicketDetails.zipcode}" /></td>
					<td><c:out value="${TicketDetails.count}" /></td>
					<td><a id="link"
						href="http://localhost:8080/Monitoring/GenerateTicket?zipcode=${TicketDetails.zipcode}&amp;serviceId=${TicketDetails.serviceId}" onclick="filter(this)">Generate
							Ticket</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>