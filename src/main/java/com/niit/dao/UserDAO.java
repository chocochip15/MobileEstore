package com.niit.dao;

import java.util.List;

import com.niit.bean.User;



public interface UserDAO {


	public List<User> list();

	public User getById(String id);

	public boolean isValidUser(String id, String name, boolean isAdmin);


}
