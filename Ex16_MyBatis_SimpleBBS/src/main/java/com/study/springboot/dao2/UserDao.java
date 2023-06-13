package com.study.springboot.dao2;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.SimpleBbsDto;
import com.study.springboot.dto2.UserDto;

@Mapper
public interface UserDao {

		public abstract List<UserDto> userlistDao();
		
		UserDto viewDao(String id);
		
		// return값인 int는 실행 결과 영향을 받은 row 수
//		int writeDao(String content);
//		int deleteDao(String id);
//		int updateDao(SimpleBbsDto dto);
		
//		List testIf(SimpleBbsDto dto);
	//	
		List testForeach(SimpleBbsDto dto);

		public abstract int userwriteDao(String id, String password);


}
