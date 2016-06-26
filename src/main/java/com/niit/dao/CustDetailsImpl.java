package com.niit.dao;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.bean.CustomerDetails;
@Repository("custDetails")
public class CustDetailsImpl implements CustDetailsDAO {
	@Autowired
	private SessionFactory sessionFactory;


	public CustDetailsImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<CustomerDetails> list() {
		@SuppressWarnings("unchecked")
		List<CustomerDetails> listCustomerDetails = (List<CustomerDetails>) sessionFactory.getCurrentSession()
				.createCriteria(CustomerDetails.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listCustomerDetails;
	}

	@Transactional
	public void saveOrUpdate(CustomerDetails CustomerDetails) {
		sessionFactory.getCurrentSession().saveOrUpdate(CustomerDetails);
	}

	@Transactional
	public void delete(String id) {
		CustomerDetails CustomerDetailsToDelete = new CustomerDetails();
		CustomerDetailsToDelete.setCustID(id);
		sessionFactory.getCurrentSession().delete(CustomerDetailsToDelete);
	}

	@Transactional
	public CustomerDetails get(String id) {
		String hql = "from Product where id='" + id+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<CustomerDetails> listCustomerDetails = (List<CustomerDetails>) query.list();
		
		if (listCustomerDetails != null && !listCustomerDetails.isEmpty()) {
			return listCustomerDetails.get(0);
		}
		
		return null;
	}

}
