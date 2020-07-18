package com.imooc.appoint.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.imooc.appoint.entiy.User;
import com.imooc.appoint.service.UserService;


@Controller
public class UserController{
	@Autowired
	private UserService userService;

	@RequestMapping(value = "login")
	public String form(@RequestParam("name") String name,
			@RequestParam("password") String password,
			Model model) {
		User user = new User();
		user.setName(name);
		user.setPassword(password);
		User selectUser = userService.logincheck(name,password);
		if(selectUser != null){
			return "success";
		}
		else{
			return "fail";
		}
	}

	@RequestMapping(value = "regist")
	public String register(@RequestParam("name") String name,
			@RequestParam("password") String password,
			Model model) {
		User user = new User();
		user.setName(name);
		user.setPassword(password);
		userService.register(name,password);
		return "registsuccess";
	}
}
