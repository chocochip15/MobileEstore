package com.niit.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.bean.Category;
import com.niit.dao.CategoryDAOImpl;

@Service
@Transactional
@EnableTransactionManagement
public class CategoryService {
private CategoryDAOImpl categoryDAOImpl ;
		
		

	public void setcategoryDAOImpl(CategoryDAOImpl categoryDAOImpl) {
			this.categoryDAOImpl = categoryDAOImpl;
		}







	@Autowired
		public CategoryService(CategoryDAOImpl categoryDAOImpl) {
			
			this.categoryDAOImpl = categoryDAOImpl;
		}






		
		public void saveOrUpdate(Category category) {
			
			categoryDAOImpl.saveOrUpdate(category);

		}
        public List<Category> list() {
			
		return	categoryDAOImpl.list();

		}
       public Category get(String id) {
			
			return categoryDAOImpl.get(id);

		}
       public Category getByName(String name) {
			
		return	categoryDAOImpl.getByName(name);

		}
       public void delete(String name) {
			
			categoryDAOImpl.delete(name);

		}

	

}
