package com.niit.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class CustomerDetails {
	@Id
	private String custID;
	private String custName;
	private String permanent_address;
	public String getCustID() {
		return custID;
	}
	public void setCustID(String custID) {
		this.custID = custID;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	

}
