package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.SupplierDao;
import com.niit.model.Supplier;


@Controller
public class SellerController {
	
	@Autowired
	private SupplierDao supplierDao;
	@RequestMapping("Seller")
	public ModelAndView newSupplier(){
		
		ModelAndView mv = new ModelAndView("Seller");
		mv.addObject("AddSupplierButtonClicked", true);
		return mv;
	}
	
	
	@RequestMapping("addSeller")
	public String addSupplier(@ModelAttribute Supplier supplier){
		supplierDao.saveOrUpdate(supplier);
		return "redirect:viewSeller";
		
	}
	
	@RequestMapping("viewSeller")
	public String viewSupplier(Model model){
		
		List<Supplier> supplierList = supplierDao.list();
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("ViewSupplierButtonClicked", true);
		
		return "Seller";
		
	}
	
	@RequestMapping("deleteSeller")
	public String deleteSupplier(@RequestParam("supplierId") int supplierid ,Model model){
		
		supplierDao.delete(supplierid);
		return "redirect:viewSeller";
		
	}
	
	@RequestMapping("editSeller")
	public String editSupplier(@RequestParam ("supplierId") int supplierId, Model model){
		Supplier supplier = supplierDao.getBySupplierId(supplierId);
		model.addAttribute("supplier", supplier);
		model.addAttribute("editSupplierClicked", true);
		return "Seller";
		
	}
	@RequestMapping("supplierEdited")
	public String supplierEdited(@ModelAttribute Supplier supplier){
		
		supplierDao.saveOrUpdate(supplier);
		return "redirect:viewSupplier";
	}

 }