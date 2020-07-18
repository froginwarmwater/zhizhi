package com.imooc.appoint.dao;


import org.apache.ibatis.annotations.Param;

import com.imooc.appoint.entiy.User;

public interface UserDao{
	User logincheck(@Param("username") String name,@Param("password") String password);
	
	void register(@Param("username") String name,@Param("password") String password);
}