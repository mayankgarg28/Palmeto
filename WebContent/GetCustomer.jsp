<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@
	page import="verizon.montoring.CustomerDeviceDetails"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styles.css" rel="stylesheet">
<link href="theme.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search by Customer</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

	<%!List<CustomerDeviceDetails> cddetails = null;%>
	<%
		int nm = Integer.parseInt(request.getParameter("nm"));
		String hint = "";

		//List<CustomerDeviceDetails> cddetails = null;
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@192.168.0.240:1521:orcl", "scott",
				"tiger");
		PreparedStatement pst = conn
				.prepareStatement("select customer_id as customerId,device.status,device.bandwidth_mbps as bandwidthMbps,device_id as deviceId, port_id as portId,zipcode from circuit_design,device where customer_id=? and circuit_design.source_port=device.sequence_number");
		pst.setInt(1, nm);
		ResultSet rs = pst.executeQuery();
		cddetails = new ArrayList<CustomerDeviceDetails>();
		while (rs.next()) {
			int customerId = rs.getInt("customerId");
			String status = rs.getString("status");
			int bandwidthMbps = rs.getInt("bandwidthMbps");
			String deviceId = rs.getString("deviceId");
			int portId = rs.getInt("portId");
			int zipcode = rs.getInt("zipcode");
			CustomerDeviceDetails cdd = new CustomerDeviceDetails(
					customerId, bandwidthMbps, status, deviceId, portId,
					zipcode);
			cddetails.add(cdd);

		}
		if (cddetails == null) {
			out.println("No Such Customer");
		}
		request.setAttribute("cddetails", cddetails);
	%>
	<%
			if (cddetails.size()==0){
		%>
	<script type="text/javascript">
		alert('No Entry Found')
	</script>
	<%
		}
	%>
	<table class="vztable" border="1" style="margin-top: 30px">
		<tr>
			<td>CustomerId</td>
			<td>Status</td>
			<td>BandwidthMbps</td>
			<td>DeviceId</td>
			<td>PortId</td>
			<td>Zipcode</td>
		</tr>

		<c:forEach var="CustomerDetails" items="${cddetails}">
			<tr>
				<td><c:out value="${CustomerDetails.customerId}" /></td>
				<td><c:out value="${CustomerDetails.status}" /></td>
				<td><c:out value="${CustomerDetails.bandwidthMbps}" /></td>
				<td><c:out value="${CustomerDetails.deviceId}" /></td>
				<td><c:out value="${CustomerDetails.portId}" /></td>
				<td><c:out value="${CustomerDetails.zipcode}" /></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>