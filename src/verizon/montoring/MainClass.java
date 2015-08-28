package verizon.montoring;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MainClass {
	public static void main(String[] args) {
		// List<PortDetails> pDetails = new
		// MonitoringDAO().distinctPort(50024536,
		// "CISC9036");

		// List<DeviceDetails> dDetails = new MonitoringDAO()
		// .distinctDevice(50024536);
		// Iterator i = pDetails.iterator();

		List<LocationDetails> lDetails = new MonitoringDAO().distinctLocation();

		Iterator i = lDetails.iterator();
		while (i.hasNext()) {
			LocationDetails ld = (LocationDetails) i.next();
			System.out.println(ld.toString());
		}

		List<DeviceDetails> dDetails = new MonitoringDAO()
				.distinctDevice(50024536);
		Iterator j = dDetails.iterator();
		while (j.hasNext()) {
			DeviceDetails dd = (DeviceDetails) j.next();
			System.out.println(dd.toString());

		}

		List<PortDetails> pDetails = new MonitoringDAO().distinctPort(
				"CISC9036");
		Iterator k = pDetails.iterator();
		while (k.hasNext()) {
			PortDetails pd = (PortDetails) k.next();
			System.out.println(pd.toString());
		}
	}
}
