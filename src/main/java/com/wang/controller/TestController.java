package com.wang.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping
public class TestController {

	@RequestMapping("/login")
	private @ResponseBody String hello(@RequestParam(value = "username", required = false) String username,
			@RequestParam(value = "password", required = false) String password) {
		return "Hello " + username + ",Your password is: " + password;

	}
	
	@RequestMapping("/index")
	private ModelAndView index(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("session", request.getSession().getId());
		return modelAndView;

	}

}