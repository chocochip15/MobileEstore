package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.CategoryDAO;
import com.niit.services.CategoryService;
import com.niit.bean.Category;

@Controller
public class CategoryController {
	
	private CategoryService categoryService;
	
	@Autowired
	public void setCategoryService(CategoryService categoryService){
		this.categoryService = categoryService;
	}
	
	@Autowired
public CategoryController(CategoryService categoryService) {
		this.categoryService = categoryService;
	}


	/*	@RequestMapping(value = "/onLoad", method = RequestMethod.GET)
	public String onLoad(Model model) {
	System.out.println("onLoad");
		model.addAttribute("category", new Category());//category object creation
		model.addAttribute("categoryList", this.categoryDAO.list());
		//model.addAttribute("cartSize", this.cartDAO.list.size());
		return "home";
	}
	*/
	@RequestMapping(value = "/categories", method = RequestMethod.GET)
	public String listCategorys(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryService.list());
		return "category";
	}
	
	//For add and update category both
	@RequestMapping(value= "/category/add", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category){
		
	
			categoryService.saveOrUpdate(category);
		
		return "redirect:/categories";
		
	}
	
	@RequestMapping("category/remove/{id}")
    public String removeCategory(@PathVariable("id") String id,ModelMap model) throws Exception{
		
       try {
		categoryService.delete(id);
		model.addAttribute("message","Successfully Added");
	} catch (Exception e) {
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/categories";
    }
 
    @RequestMapping("category/edit/{id}")
    public String editCategory(@PathVariable("id") String id, Model model){
    	System.out.println("editCategory");
        model.addAttribute("category", this.categoryService.get(id));
        model.addAttribute("listCategorys", this.categoryService.list());
        return "category";
    }
	}
