package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.services.ProductService;
import com.google.gson.Gson;
import com.niit.bean.Product;


@Controller
public class ProductController {

	
	private ProductService productService;
	

	@Autowired
	public ProductController(ProductService productService) {
		
		this.productService = productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public ModelAndView listProducts(Model model) {
		model.addAttribute("product", new Product());
		System.out.println("product controller");
       System.out.println(productService.list().get(0).getName());	
		//model.addAttribute("productList", productService.list());
		ModelAndView mv=new ModelAndView("Products");
		mv.addObject("productList", productService.list());
			
		List<Product> list=productService.list();
		String data=new Gson().toJson(list);
				mv.addObject("data",data);
				System.out.println(data);
				return mv;
	}

	// For add and update product both
	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product , BindingResult result , Model m ) {

		
		productService.saveOrUpdate(product);
		m.addAttribute("productList", productService.list());
		return "Products";

	}

	@RequestMapping("product/remove/{id}" )
	public String removeProduct(@PathVariable("id") String id, ModelMap model) throws Exception {

		try {
			productService.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		
		return "Products";
	}

	@RequestMapping("product/edit/{id}")
	public String editProduct(@PathVariable("id") String id, Model model) {
		System.out.println("editProduct");
		model.addAttribute("product", productService.get(id));
		model.addAttribute("productList", productService.list());
		
	
		return "Products";
	}
}
