package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.dao.SupplierDao;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;


@Controller
public class CarController {

	@Autowired
	private ProductDao productDao;
	@Autowired
	private CategoryDao categoryDao;
	
	@Autowired
	private SupplierDao supplierDao;
	
	@RequestMapping("ViewProduct")
	public String ViewProduct(){
		
		return "ViewProduct";
	}
	@RequestMapping("Car")
	public ModelAndView newProduct(){
		
		ModelAndView mv = new ModelAndView("Car");
		List<Category> categoryList = categoryDao.list();
		List<Supplier> supplierList = supplierDao.list();
		mv.addObject("supplierList", supplierList);
		mv.addObject("categoryList", categoryList);
		mv.addObject("AddProductButtonClicked", true);
		return mv;
	}
	@RequestMapping("addCar")
	public String addProduct(@ModelAttribute Product product, @RequestParam("file") MultipartFile file ,Model model){
		productDao.saveOrUpdate(product);
		
		String path = "D:/niit/rksFrontend/src/main/webapp/WEB-INF/resources/product-cars/";
		FileUtil.upload(path, file, product.getProductId()+".jpg");
		
		model.addAttribute("ViewProductButtonClicked", true);
		
		return "redirect:viewCar";
		
	}
	@RequestMapping("viewCar")
	public String viewProducts(Model model){
		
		List<Product> productList = productDao.list();
		model.addAttribute("productList", productList);
		model.addAttribute("ViewProductButtonClicked", true);
		return "Car";
		
		
	}
	
	@RequestMapping("deleteCar")
	public String deleteProducts(@RequestParam("productId") int productid, Model model){
		
		productDao.delete(productid);
		return "redirect:viewCar";
	}
	
	@RequestMapping("editCar")
	public ModelAndView editProduct(@RequestParam ("productId") int productId, Model model){
		ModelAndView mv = new ModelAndView("Car");
		List<Category> categoryList = categoryDao.list();
		List<Supplier> supplierList = supplierDao.list();
		Product product = productDao.getByProductId(productId);
		model.addAttribute("product", product);
		mv.addObject("supplierList", supplierList);
		mv.addObject("categoryList", categoryList);
		model.addAttribute("editProductClicked", true);
		return mv;
	}
	@RequestMapping("CarEdited")
	public String productEdited(@ModelAttribute Product product){
		
		productDao.saveOrUpdate(product);
		return "redirect:viewCar";
	}
	
	@RequestMapping("Cardescription")
	public String ProductDescription(@RequestParam ("productId") int productId, Model model){
		Product product = productDao.getByProductId(productId);
		model.addAttribute("product", product);
		return "Cardescription";
	}

}