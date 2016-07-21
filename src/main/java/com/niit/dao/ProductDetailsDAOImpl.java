package com.niit.dao;

import java.util.List;



import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.bean.Product;
import com.niit.bean.ProductDetails;


@Repository("productDetailsDAO")

public class ProductDetailsDAOImpl implements ProductDetailsDAO {
	

	private SessionFactory sessionFactory;	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	

	@Autowired
	public ProductDetailsDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	public List<ProductDetails> list() {
		@SuppressWarnings("unchecked")
		List<ProductDetails> listProductDetails = (List<ProductDetails>) sessionFactory.getCurrentSession()
				.createCriteria(ProductDetails.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listProductDetails;
	}

	
	public void saveOrUpdate(ProductDetails productDetails) {
		sessionFactory.getCurrentSession().saveOrUpdate(productDetails);
	}

	
	public void delete(String id) {
		ProductDetails productDetailsToDelete = new ProductDetails();
		productDetailsToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(productDetailsToDelete);
	}

	
	public ProductDetails getById(String id) {
		String hql = "from Product where id='" + id+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<ProductDetails> listProductDetails = (List<ProductDetails>) query.list();
		
		if (listProductDetails != null && !listProductDetails.isEmpty()) {
			return listProductDetails.get(0);
		}
		
		return null;
	}


}