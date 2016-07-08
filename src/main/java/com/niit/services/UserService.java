/*package com.niit.services;

import java.util.List;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.bean.User;
import com.niit.dao.UserDAOImpl;

@Service

public class UserService {
	private UserDAOImpl userDAOImpl ;
	@Autowired
		public UserService(UserDAOImpl userDAOImpl) {
			this.userDAOImpl = userDAOImpl;
		}

	

	public void setUserDAOImpl(UserDAOImpl userDAOImpl) {
		this.userDAOImpl = userDAOImpl;
	}



	@Transactional
public List<User> list()
{
	return userDAOImpl.list();
}
	@Transactional
	public boolean isValidUser(String id, String password, boolean isAdmin) {
		return userDAOImpl.isValidUser(id, password, isAdmin);
		
	}
}
*/