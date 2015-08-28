package verizon.montoring;

public class LocationDetails {
	private int zipcode;
	private int deviceCount;
	private int portCount;
	private int bandwidthMbps;

	public LocationDetails() {
		
		// TODO Auto-generated constructor stub
	}

	public LocationDetails(int zipcode, int deviceCount, int portCount,
			int bandwidthMbps) {
		//super();
		this.zipcode = zipcode;
		this.deviceCount = deviceCount;
		this.portCount = portCount;
		this.bandwidthMbps = bandwidthMbps;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	public int getDeviceCount() {
		return deviceCount;
	}

	public void setDeviceCount(int deviceCount) {
		this.deviceCount = deviceCount;
	}

	public int getPortCount() {
		return portCount;
	}

	public void setPortCount(int portCount) {
		this.portCount = portCount;
	}

	public int getBandwidthMbps() {
		return bandwidthMbps;
	}

	public void setBandwidthMbps(int bandwidthMbps) {
		this.bandwidthMbps = bandwidthMbps;
	}

	@Override
	public String toString() {
		return "LocationDetails [zipcode=" + zipcode + ", deviceCount="
				+ deviceCount + ", portCount=" + portCount + ", bandwidthMbps="
				+ bandwidthMbps + "]";
	}

}
