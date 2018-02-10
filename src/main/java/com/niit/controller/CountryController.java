package com.niit.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDao;
import com.niit.dao.CategoryDao;
import com.niit.model.Cart;
import com.niit.model.Category;


@Controller
public class CountryController {
	
		@Autowired
		private CategoryDao categoryDao;
		@Autowired
		private CartDao cartDao;
		
		@RequestMapping("Country")
		public String NewCategory(Model model)	{
			
			model.addAttribute("AddCategoryButtonClicked", true);
			return "Country";
			
		}
		
		@RequestMapping("addCountry")
		public String addCategory(@ModelAttribute Category category, Model model){
			categoryDao.saveOrUpdate(category);
			
			return "redirect:viewCountry";
		
		}
		@RequestMapping("viewCountry")
		public String ViewCategory(Model model){
			List<Category> categoryList = categoryDao.list();
			model.addAttribute("categoryList", categoryList);
			model.addAttribute("ViewCategoryButtonClicked", true);
			return "Country";
		}
		@RequestMapping("deleteCountry")
		public String deleteCategory(@RequestParam ("categoryId") int categoryId){
			
			categoryDao.delete(categoryId);
			
			return "redirect:viewCountry";
						
		}
		@RequestMapping("editCountry")
		public String editCategory(@RequestParam ("categoryId") int categoryId, Model model){
			Category category = categoryDao.getByCategoryId(categoryId);
			model.addAttribute("category", category);
			model.addAttribute("editCategoryClicked", true);
			return "Country";
			
		}
		@RequestMapping("categoryCountry")
		public String categoryEdited(@ModelAttribute Category category){
			
			categoryDao.saveOrUpdate(category);
			return "redirect:viewCountry";
		}
		
		@RequestMapping("adminCart")
		public String adminCart(Model model){
			List<Cart> cartList = cartDao.list();
			model.addAttribute("cartList", cartList);
			model.addAttribute("adminCartClicked", true);
			return "Country";
			
			
		}

	}
