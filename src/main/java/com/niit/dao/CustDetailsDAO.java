package com.niit.dao;

import java.util.List;

import com.niit.bean.CustomerDetails;

public interface CustDetailsDAO {
	public List<CustomerDetails> list();

	public CustomerDetails get(String id);

	public void saveOrUpdate(CustomerDetails customerDetails);

	public void delete(String id);
}
