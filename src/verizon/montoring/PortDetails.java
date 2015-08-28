package verizon.montoring;

public class PortDetails {
	private int portId;
	private int bandwidthMbps;
	private String status;

	public PortDetails(int portId, int bandwidthMbps, String status) {
		// TODO Auto-generated constructor stub
		this.portId = portId;
		this.bandwidthMbps = bandwidthMbps;
		this.status = status;
	}

	public PortDetails() {
		super();
		// TODO Auto-generated constructor stub
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "PortDetails [portId=" + portId + ", bandwidthMbps="
				+ bandwidthMbps + ", status=" + status + "]";
	}

}
