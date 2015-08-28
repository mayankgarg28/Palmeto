package verizon.montoring;

public class DeviceDetails {
	private String deviceId;
	private int portCount;
	private int bandwidthMbps;

	public DeviceDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DeviceDetails(String deviceId, int portCount, int bandwidthMbps) {
		super();
		this.deviceId = deviceId;

		this.portCount = portCount;
		this.bandwidthMbps = bandwidthMbps;
	}

	public String getDeviceId() {
		return deviceId;
	}

	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}

	public int getBandwidthMbps() {
		return bandwidthMbps;
	}

	public void setBandwidthMbps(int bandwidthMbps) {
		this.bandwidthMbps = bandwidthMbps;
	}

	public int getPortCount() {
		return portCount;
	}

	public void setPortCount(int portCount) {
		this.portCount = portCount;
	}

	@Override
	public String toString() {
		return "DeviceDetails [deviceId=" + deviceId + ", portCount="
				+ portCount + ", bandwidthMbps=" + bandwidthMbps + "]";
	}

}

// deviceId,partNumber,manufacturer,count(portId) as
// portCount,sum(bandwidth_mbps) as bandwidthMbps