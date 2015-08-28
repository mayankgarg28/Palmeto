<%@page import="verizon.montoring.CustomerDeviceDetails"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<title>CustomerDetails</title>
<script type="text/javascript">
	function showCustomer(str) {
		var xmlhttp;

		if (str == "") {
			document.getElementById("txtHint").innerHTML = "";
			return;
		}
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("txtHint").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "GetCustomer.jsp?nm=" + str, true);

		xmlhttp.send();
	}
</script>


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
					<li class="Group Ticket"><a href="GroupTicket">Group Ticket</a></li>
					<li class="Log Out"><a href="MainPage.jsp">Log Out</a></li>
				</ul>
			</div>
		</div>
		</nav>
		<label class="vzh4">Customer Id</label> <input type="number" id="txt1"
			name="customers" onkeyup="showCustomer(this.value)" class="vztext"
			placeholder="Search By Customer Id" style="margin-left: 10px;" min=1>
		<br />
		<div id="txtHint">
			<!-- <label class="vzh3">Customer Information</label> -->
		</div>
		<br />
	</div>
</body>
</html>