package test;

public class AddValue {

	private int id;
	String Customer_Id,Contact_Id,value1,value2;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCustomer_Id() {
		return Customer_Id;
	}
	public void setCustomer_Id(String customer_Id) {
		Customer_Id = customer_Id;
	}
	public String getContact_Id() {
		return Contact_Id;
	}
	public void setContact_Id(String contact_Id) {
		Contact_Id = contact_Id;
	}
	public String getValue1() {
		return value1;
	}
	public void setValue1(String value1) {
		this.value1 = value1;
	}
	public String getValue2() {
		return value2;
	}
	public void setValue2(String value2) {
		this.value2 = value2;
	}
	public AddValue(int id, String customer_Id, String contact_Id, String value1, String value2) {
		super();
		this.id = id;
		Customer_Id = customer_Id;
		Contact_Id = contact_Id;
		this.value1 = value1;
		this.value2 = value2;
	}
	
	
}
