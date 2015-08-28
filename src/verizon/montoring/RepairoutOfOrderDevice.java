package verizon.montoring;

public class RepairoutOfOrderDevice {
	private String deviceId;
	private String partNumber;
	private String manufacturer;
	private int zipcode;
	private int portId;
	private int bandwidthMbps;
	private String deviceType;
	private String status;

	public RepairoutOfOrderDevice(String deviceId, String partNumber,
			String manufacturer, int zipcode, int portId, int bandwidthMbps,
			String deviceType, String status) {
		super();
		this.deviceId = deviceId;
		this.partNumber = partNumber;
		this.manufacturer = manufacturer;
		this.zipcode = zipcode;
		this.portId = portId;
		this.bandwidthMbps = bandwidthMbps;
		this.deviceType = deviceType;
		this.status = status;
	}

	public RepairoutOfOrderDevice() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getDeviceId() {
		return deviceId;
	}

	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}

	public String getPartNumber() {
		return partNumber;
	}

	public void setPartNumber(String partNumber) {
		this.partNumber = partNumber;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	public int getPortId() {
		return portId;
	}

	public void setPortId(int portId) {
		this.portId = portId;
	}

	public int getBandwidthMbps() {
		return bandwidthMbps;
	}

	public void setBandwidthMbps(int bandwidthMbps) {
		this.bandwidthMbps = bandwidthMbps;
	}

	public String getDeviceType() {
		return deviceType;
	}

	public void setDeviceType(String deviceType) {
		this.deviceType = deviceType;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "RepairoutOfOrderDevice [deviceId=" + deviceId + ", partNumber="
				+ partNumber + ", manufacturer=" + manufacturer + ", zipcode="
				+ zipcode + ", portId=" + portId + ", bandwidthMbps="
				+ bandwidthMbps + ", deviceType=" + deviceType + ", status="
				+ status + "]";
	}

}
