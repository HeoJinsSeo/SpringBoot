package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.FoodDTO;

@Mapper
public interface FoodDAO {
	int insertFood(String title);
	List<FoodDTO> selectFood();
	int updateFood(String title);
	int deleteFood(FoodDTO foodDTO);
}
