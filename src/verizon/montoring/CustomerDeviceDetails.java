package verizon.montoring;

public class CustomerDeviceDetails {
	private int customerId;
	private int bandwidthMbps;
	private String status;
	private String deviceId;
	private int portId;
	private int zipcode;

	public CustomerDeviceDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CustomerDeviceDetails(int customerId, int bandwidthMbps,
			String status, String deviceId, int portId, int zipcode) {
		super();
		this.customerId = customerId;
		this.bandwidthMbps = bandwidthMbps;

		this.status = status;
		this.deviceId = deviceId;
		this.portId = portId;
		this.zipcode = zipcode;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public int getBandwidthMbps() {
		return bandwidthMbps;
	}

	public void setBandwidthMbps(int bandwidthMbps) {
		this.bandwidthMbps = bandwidthMbps;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDeviceId() {
		return deviceId;
	}

	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}

	public int getPortId() {
		return portId;
	}

	public void setPortId(int portId) {
		this.portId = portId;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	@Override
	public String toString() {
		return "CustomerDeviceDetails [customerId=" + customerId
				+ ", bandwidthMbps=" + bandwidthMbps + ", status=" + status
				+ ", deviceId=" + deviceId + ", portId=" + portId
				+ ", zipcode=" + zipcode + "]";
	}

}
