package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.RoleDao;
import com.niit.dao.UserDao;
import com.niit.model.Role;
import com.niit.model.User;

@Controller
public class IndexController {

	@RequestMapping("/")
	public String IndexPage(Model model)
	{
		return "index";
	}
	@RequestMapping("/index")
	public String Index(Model model)
	{
		return "index";
	}
	
	@RequestMapping("signup")
	public ModelAndView signup() {

		ModelAndView mv = new ModelAndView("signup");
		mv.addObject("signupButtonClicked", true);
		return mv;
	}
	
	@RequestMapping("login")
	public ModelAndView loginpage(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		ModelAndView mv = new ModelAndView("login");

		if (error != null) {
			model.addAttribute("error", "Mail Id or Password Incorrect");
		}

		if (logout != null) {
			model.addAttribute("logout", "Logged out Successfully");
			
		}

		mv.addObject("loginButtonClicked", true);
		return mv;
	}
}