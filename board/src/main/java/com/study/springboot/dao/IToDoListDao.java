package com.study.springboot.dao;

import java.util.List;

import com.study.springboot.dto.ToDoListDto;

public interface IToDoListDao {

	public abstract List<ToDoListDto> listToDoDao();
	
	ToDoListDto view2Dao(String num);
	int write2Dao(String content);
	int delete2Dao(String num);
	int update2Dao(ToDoListDto dto);
	
	
}
