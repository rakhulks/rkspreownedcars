package com.niit.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.RoleDao;
import com.niit.dao.UserDao;
import com.niit.model.Role;
import com.niit.model.User;

@Controller
public class UserController {

	@Autowired
	private UserDao userDao;

	
	@Autowired
	private RoleDao roleDao;

	@Autowired
	private Role role;

	@RequestMapping("addNewUser")
	public String addUser(@ModelAttribute User user, Model model) {
		
		String message;
		
		if(userDao.isAllReadyRegister(user.getEmail(), true)){
			message = "Your emailId is Alread registered you have to login";
			
		}
		else{
			
		
		user.setEnabled(true);
		role.setEmail(user.getEmail());
		role.setRole("ROLE_USER");
		role.setUsername(user.getUsername());
		role.setPhone(user.getPhone());

		user.setRole(role);
		role.setUser(user);

		userDao.saveOrUpdate(user);
		roleDao.saveOrUpdate(role);
		
		message = "You have Successfully Registered";
		}
		model.addAttribute("message", message);
		model.addAttribute("loginButtonClicked", true);
		return "login";

	}
	@RequestMapping("/afterlogin")
	public String loginProcess(Principal p, Model model){
		
		String email = p.getName();
		
		System.out.println(email);
	
		Role role = roleDao.getByEmail(email);
		
		String role1 = role.getRole();
		
		if(role1.equals("ROLE_ADMIN")){
			
			return "index";
		}
		else if(role1.equals("ROLE_USER")){
			model.addAttribute("userLoggedIn", "true");
			return "index";
		}
		else{		
		
		return "index";
		}
	}
	
}