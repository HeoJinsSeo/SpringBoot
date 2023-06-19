package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.FoodDAO;
import com.study.springboot.dto.FoodDTO;

@Service
public class FoodServiceImpl implements FoodService{

	@Autowired
	FoodDAO foodDAO;
	
	@Override
	public int setFood(String title) {
		int result = foodDAO.insertFood(title);
		return result;
	}

	@Override
	public List getFood() {
		List list = foodDAO.selectFood();
		return list;
	}

	@Override
	public int modifyFood(String title) {
		int result = foodDAO.updateFood(title);
		return result;
	}

	@Override
	public int deleteFood(FoodDTO dto) {
		int result = foodDAO.deleteFood(dto);
		return result;
	}

}
