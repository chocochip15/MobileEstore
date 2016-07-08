package com.niit.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.bean.CustomerDetails1;
import com.niit.dao.CustDetailsDAOImpl1;

@Service
@Transactional
public class CustDetailsService1 {
	private CustDetailsDAOImpl1 custDetailsDAOImpl1 ;
	

	public void setCustDetailsDAOImpl(CustDetailsDAOImpl1 custDetailsDAOImpl1) {
		this.custDetailsDAOImpl1 = custDetailsDAOImpl1;
	}
	@Autowired
	public CustDetailsService1(CustDetailsDAOImpl1 custDetailsDAOImpl1 ) {
	
		this.custDetailsDAOImpl1 = custDetailsDAOImpl1;
	}


	


	@Transactional
	public void save(CustomerDetails1 customerDetails1) {
		
		 custDetailsDAOImpl1.save(customerDetails1);

	}
	

}
