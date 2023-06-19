package com.study.springboot.service;

import java.util.List;

import com.study.springboot.dto.FoodDTO;


public interface FoodService {

	int setFood(String title);
	List getFood();
	int modifyFood(String title);
	int deleteFood(FoodDTO dto);
}
