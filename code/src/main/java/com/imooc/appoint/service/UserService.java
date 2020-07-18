package com.imooc.appoint.service;

import com.imooc.appoint.entiy.User;

public interface UserService{
	
	User logincheck(String username,String password);
	
	void register(String username,String password);
}