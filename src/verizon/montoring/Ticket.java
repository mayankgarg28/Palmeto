package verizon.montoring;

public class Ticket {
	private int zipcode;
	private String serviceId;
	private int count;
	public Ticket(int zipcode, String serviceId2, int count) {
		super();
		this.zipcode = zipcode;
		this.serviceId = serviceId2;
		this.count = count;
	}
	public Ticket() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	public String getServiceId() {
		return serviceId;
	}
	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "Ticket [zipcode=" + zipcode + ", serviceId=" + serviceId
				+ ", count=" + count + "]";
	}

}
