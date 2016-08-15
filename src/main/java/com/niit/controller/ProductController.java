package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
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
		// model.addAttribute("productList", productService.list());
		ModelAndView mv = new ModelAndView("Products");
		mv.addObject("productList", productService.list());

		List<Product> list = productService.list();
		String data = new Gson().toJson(list);
		mv.addObject("data", data);
		System.out.println(data);
		return mv;
	}



	// For add and update product both
	@RequestMapping(value = "/Admin/product/add", method = RequestMethod.POST)
	public String adminAddProduct(@ModelAttribute("product") Product product, BindingResult result, Model m,
			HttpServletRequest request) {

		m.addAttribute("productList", productService.list());

		productService.saveOrUpdate(product);

		MultipartFile file = product.getImage();
		String originalfile = file.getOriginalFilename();

		String filepath = request.getSession().getServletContext().getRealPath("/resources/upload_images/");
		System.out.println(filepath);
		String filename = filepath + "\\" + product.getId() + ".jpg";

		try {
			byte imagebyte[] = product.getImage().getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filename));
			fos.write(imagebyte);
			fos.close();
			System.out.println(filename);

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/Admin_product";

	}

	@RequestMapping(value = "/MoreDetails", method = RequestMethod.POST)
	public ModelAndView moreDetails(@ModelAttribute("product") Product product, BindingResult result, Model m) {

		//productService.saveOrUpdate(product);
		/* m.addAttribute("productList", productService.list()); */
		m.addAttribute("product", product);
		System.out.println(product.getName());
		ModelAndView mv = new ModelAndView("ProductDetails");
		mv.addObject("product", product);
		System.out.println(new Gson().toJson(product));
		return mv;

	}

	@RequestMapping("/Admin/product/remove/{id}")
	public String adminRemoveProduct(@PathVariable("id") Integer id, Model model) throws Exception {

		try {
			productService.delete(id);

		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}

		return "redirect:/Admin_product";
	}

	@RequestMapping("Admin/product/edit/{id}")
	public String editProduct(@PathVariable("id") String id, Model model) {
		System.out.println("editProduct");
		model.addAttribute("product", productService.get(id));
		model.addAttribute("productList", productService.list());

		return "Admin_products";
	}

	@RequestMapping("/Admin_product")
	protected ModelAndView adminProduct(HttpServletRequest arg0, HttpServletResponse arg1, Model m) throws Exception {
		ModelAndView modelandview = new ModelAndView("Admin_products");
		m.addAttribute("product", new Product());
		m.addAttribute("productList", productService.list());
		return modelandview;

	}
}
