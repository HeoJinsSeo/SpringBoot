package com.study.springboot.dao2;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.SimpleBbsDto;
import com.study.springboot.dto2.UserDto;

@Mapper
public interface UserDao {

		public abstract List<UserDto> userlistDao();
		
		UserDto userviewDao(String userid);
		
		// return값인 int는 실행 결과 영향을 받은 row 수
//		int writeDao(String content);
		int deleteDao(String userid);
//		int updateDao(SimpleBbsDto dto);
		
//		List testIf(SimpleBbsDto dto);
	//	
	//	List testForeach(SimpleBbsDto dto);

		public abstract int userwriteDao(String userid, String password);


}
