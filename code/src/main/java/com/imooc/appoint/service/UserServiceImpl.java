package com.imooc.appoint.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.imooc.appoint.dao.UserDao;
import com.imooc.appoint.entiy.User;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	public User logincheck(String username,String password) {
		return userDao.logincheck(username,password);
	}
	
	public void register(String username,String password) {
		userDao.register(username,password);
		
	}
	
}