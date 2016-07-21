package com.niit.dao;

import java.util.List;

import com.niit.bean.Product;
import com.niit.bean.ProductDetails;




public interface ProductDetailsDAO {


	public List<ProductDetails> list();
	public void saveOrUpdate(ProductDetails productDetails);
	public void delete(String id);
	public ProductDetails getById(String id);


}
