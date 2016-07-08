package com.niit.dao;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.bean.CustomerDetails1;
@Repository
public class CustDetailsDAOImpl1 implements CustDetailsDAO1 {
	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Autowired
	public CustDetailsDAOImpl1(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	
	@Transactional
	public void save(CustomerDetails1 customerDetails1) {
		sessionFactory.getCurrentSession().persist(customerDetails1);
	}

}
