package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.bean.Product;
import com.niit.services.ProductService;
@Component
@Controller
public class ShopingCartController {

	private ProductService productService;

	@Autowired
	public ShopingCartController(ProductService productService) {

		this.productService = productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	Product product;

	@RequestMapping("/Order/{id}")
	public String cartPage(@PathVariable("id") int id, Model m) {
		Product product= productService.getByID(id);
		
		this.product=product;
	//	System.err.println(product.getName());
		/*System.err.println(this.product.getName());*/
		m.addAttribute("product", product);
		return "redirect:/Orderflow"; // page name
	}
	
	public Product initflow()
	
	{
		System.out.println("&&&&&&&&&&&&&&");
		return product;
	}
}
