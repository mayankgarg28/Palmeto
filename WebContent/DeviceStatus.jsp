<%@page import="verizon.montoring.RepairoutOfOrderDevice"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="verizon.montoring.MonitoringDAO"%>
<%@page import="verizon.montoring.LocationDetails"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alerts</title>
<link href="styles.css" rel="stylesheet">
<link href="theme.css" rel="stylesheet">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
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
							<li><a href="Location.jsp">Search By Location(zipcode)</a></li>
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
			List<RepairoutOfOrderDevice> rDetails = new MonitoringDAO()
					.alertDetails();
			pageContext.setAttribute("rDetails", rDetails);
		%>
		<h2 class="vzh2">Alerts Details</h2>
		<table class="vztable">
			<tr>
				<td>Device Ids</td>
				<td>Part Number</td>
				<td>Manufacturer</td>
				<td>Zipcode</td>
				<td>Port Ids</td>
				<td>Bandwidth(Mbps)</td>
				<td>Device Type</td>
				<td>Status</td>

			</tr>

			<c:forEach var="RepairOutOfservice" items="${rDetails}">
				<tr>
					<td><c:out value="${RepairOutOfservice.deviceId}" /></td>

					<td><c:out value="${RepairOutOfservice.partNumber}" /></td>
					<td><c:out value="${RepairOutOfservice.manufacturer}" /></td>
					<td><c:out value="${RepairOutOfservice.zipcode}" /></td>
					<td><c:out value="${RepairOutOfservice.portId}" /></td>
					<td><c:out value="${RepairOutOfservice.bandwidthMbps}" /></td>
					<td><c:out value="${RepairOutOfservice.deviceId}" /></td>
					<td><c:out value="${RepairOutOfservice.status}" /></td>


				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
