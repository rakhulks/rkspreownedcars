package com.niit.dao;

import java.util.List;

import com.niit.model.User;

public interface UserDao {

	public List<User> list();
	
	public User getByUserId(int userId);
	
	public User getByUName(String username);		
	
	public User getByEmail(String email);
	
	public boolean isAllReadyRegister(String email, boolean b);
	
	public void saveOrUpdate(User user);
		
	public void delete(int userId);

}