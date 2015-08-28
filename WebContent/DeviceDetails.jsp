<%@page import="verizon.montoring.LocationDetails"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="verizon.montoring.MonitoringDAO"%>
<%@page import="verizon.montoring.DeviceDetails"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styles.css" rel="stylesheet">
<link href="theme.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DeviceDetails</title>
<link rel="stylesheet" type="text/css" href="styles.css">
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
					<li class="Group Ticket"><a href="GroupTicket">Group Ticket</a></li>
					<li class="Log Out"><a href="MainPage.jsp">Log Out</a></li>
				</ul>
			</div>
		</div>
		</nav>
		<%
			List<DeviceDetails> dDetails = (List<DeviceDetails>) request
					.getAttribute("dDetails");
		%>
		<%
			if (dDetails.size()==0){
		%>
		<script type="text/javascript">
			alert('No Entry Found')
		</script>
		<%
			}
		%>
		<h2 class="vzh2">Device Details</h2>
		<table class="vztable">
			<tr>
				<td>DeviceId</td>
				<td>#Port</td>
				<td>BandwidthMbps</td>
			</tr>
			<c:forEach var="DeviceDetails" items="${dDetails}">
				<tr>
					<td><a
						href="http://localhost:8080/Monitoring/PortServlet?deviceId=${DeviceDetails.deviceId}">
							<c:out value="${DeviceDetails.deviceId}" />
					</a></td>
					<td><c:out value="${DeviceDetails.portCount}" /></td>
					<td><c:out value="${DeviceDetails.bandwidthMbps}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>

