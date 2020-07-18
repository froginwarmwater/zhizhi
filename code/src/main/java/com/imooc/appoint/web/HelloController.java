package com.imooc.appoint.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

 

@Controller
public class HelloController {
	//@RequestMapping("/hello")
	private Logger logger=LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping(value="/this",method = RequestMethod.GET)
	private String hello(){
		return "hello";
	}
	
	
	
}
