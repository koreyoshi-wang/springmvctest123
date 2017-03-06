package com.wang.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.wang.dbutil.DBUtil;

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
		/*MongoDatabase db = DBUtil.getDB();
		MongoCollection<Document> coll = db.getCollection("koreyoshi");
		System.out.println(coll.count());
		FindIterable<Document> document= coll.find();
		Document doc = document.first();
		modelAndView.addObject("session", doc.toJson().toString());*/
		
		modelAndView.addObject("contextPath", request.getContextPath());
		
		return modelAndView;

	}

}