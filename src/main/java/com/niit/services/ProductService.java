package com.niit.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.bean.Product;
import com.niit.dao.ProductDAOImpl;



@Service
@Transactional
@EnableTransactionManagement
public class ProductService {
private ProductDAOImpl productDAOImpl ;
		
		

	public void setproductDAOImpl(ProductDAOImpl productDAOImpl) {
			this.productDAOImpl = productDAOImpl;
		}







	@Autowired
		public ProductService(ProductDAOImpl productDAOImpl) {
			
			this.productDAOImpl = productDAOImpl;
		}






		
		public void saveOrUpdate(Product product) {
			
			productDAOImpl.saveOrUpdate(product);

		}
        public List<Product> list() {
			
		return	productDAOImpl.list();

		}
       public Product get(String id) {
			
			return productDAOImpl.get(id);

		}
       
       
       public Product getByID(int id) {
			
			return productDAOImpl.getByID(id);

		}
       
       public void delete(Integer id) {
			
    	   productDAOImpl.delete(id);

		}

	

}
