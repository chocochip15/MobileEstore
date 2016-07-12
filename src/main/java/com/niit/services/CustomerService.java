package com.niit.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.bean.CustomerDetails;
import com.niit.dao.CustDetailsDAOImpl;

@Service
@Transactional
@EnableTransactionManagement
public class CustomerService {

	private CustDetailsDAOImpl custDetailsDAOImpl;

	public void setCustDetailsDAOImpl(CustDetailsDAOImpl custDetailsDAOImpl) {
		this.custDetailsDAOImpl = custDetailsDAOImpl;
	}

	@Autowired
	public CustomerService(CustDetailsDAOImpl custDetailsDAOImpl) {
		
		this.custDetailsDAOImpl = custDetailsDAOImpl;
	}

	public void save(CustomerDetails customerDetails) {

		custDetailsDAOImpl.save(customerDetails);

	}

}
