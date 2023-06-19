package com.study.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.study.springboot.service.FoodService;

@Controller
public class FoodController {

	@Autowired
	FoodService foodService;
	
	@RequestMapping("/insert")
	public String Insert(
			@RequestParam("title") String title
			) {
		int result = foodService.setFood(title);
		System.out.println("insert 결과 : "+ result);
		
		return "/food";
	}
	
	@RequestMapping("/list")
	public String list() {
		List list = foodService.getFood();
		System.out.println("list 결과 : "+ list);
		
		return "/list";
	}
	
}
