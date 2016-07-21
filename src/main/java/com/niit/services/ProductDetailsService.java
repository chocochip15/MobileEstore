package com.niit.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import com.niit.bean.ProductDetails;
import com.niit.dao.ProductDAOImpl;
import com.niit.dao.ProductDetailsDAOImpl;



@Service
@Transactional
@EnableTransactionManagement
public class ProductDetailsService {
   
	private ProductDetailsDAOImpl productDetailsDAOImpl ;
		
		

	public void setproductDetailsDAOImpl(ProductDetailsDAOImpl productDetailsDAOImpl) {
			this.productDetailsDAOImpl = productDetailsDAOImpl;
		}







	@Autowired
		public ProductDetailsService(ProductDetailsDAOImpl productDetailsDAOImpl) {
			
			this.productDetailsDAOImpl = productDetailsDAOImpl;
		}






		
		public void saveOrUpdate(ProductDetails productDetails) {
			
			productDetailsDAOImpl.saveOrUpdate(productDetails);

		}
        public List<ProductDetails> list() {
			
		return	productDetailsDAOImpl.list();

		}
       public ProductDetails getById(String id) {
			
			return productDetailsDAOImpl.getById(id);

		}
       
       public void delete(String name) {
			
    	   productDetailsDAOImpl.delete(name);

		}

	

}
