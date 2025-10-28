package com.SwiftFoodApp.SwiftFood.Model;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name ="customer")
public class Customer 
{	
	@Id
	@Column(name="customerId")
	private String customerId;
	
	@Column(name="customerName")
	private String customerName;
	
	@Column(name="contactNumber")
	private long contactNumber;
	
	@Column(name="address")
	private String address;
	
	@Column(name="emailId")
    private String emailId;
	
	@Column(name="Customerpassword")
    private String Customerpassword;
	
	// Default constructor for automatic bean creation.
	public Customer() {}

	public String getCustomerId() {
		return customerId;
	}
	
	public String getCustomerName() {
		return customerName;
	}
	
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	
	public long getContactNumber() {
		return contactNumber;
	}

	public String getAddress() {
		return address;
	}

	public String getEmailId() {
		return emailId;
	}

	public String getCustomerpassword() {
		return Customerpassword;
	}

	public void setContactNumber(long contactNumber) {
		this.contactNumber = contactNumber;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public void setCustomerpassword(String customerpassword) {
		Customerpassword = customerpassword;
	}

	@Override
	public String toString() {
		return "✅Customer \n"
				+ "customerId=" + customerId + ", customerName=" + customerName + ", contactNumber="
				+ contactNumber + ", address=" + address + ", emailId=" + emailId + ", Customerpassword="
				+ Customerpassword + "]";
	}
}
