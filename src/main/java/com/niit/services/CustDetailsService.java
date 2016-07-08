/*package com.niit.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.bean.CustomerDetails;
import com.niit.dao.CustDetailsDAOImpl;

@Service
@Transactional
public class CustDetailsService {
	private CustDetailsDAOImpl custDetailsDAOImpl ;
	

	public void setCustDetailsDAOImpl(CustDetailsDAOImpl custDetailsDAOImpl) {
		this.custDetailsDAOImpl = custDetailsDAOImpl;
	}
	@Autowired
	public CustDetailsService(CustDetailsDAOImpl custDetailsDAOImpl ) {
	
		this.custDetailsDAOImpl = custDetailsDAOImpl;
	}


	


	@Transactional
	public void save(CustomerDetails customerDetails) {
		
		 custDetailsDAOImpl.save(customerDetails);

	}
	

}
*/