/*package com.niit.services;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.bean.Supplier;
import com.niit.dao.SupplierDAOImpl;


@Service
@Transactional
public class SupplierService {
	private SupplierDAOImpl supplierDAOImpl ;
@Autowired
	public SupplierService(SupplierDAOImpl supplierDAOImpl) {
		this.supplierDAOImpl = supplierDAOImpl;
	}

public void setSupplierDAOImpl(SupplierDAOImpl supplierDAOImpl) {
	this.supplierDAOImpl = supplierDAOImpl;
}

@Transactional
public List<Supplier> list() {
	
	return supplierDAOImpl.list();

}

}


*/