package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MyController {

	@RequestMapping("/test1")   // url
	public String test1() {     // 메소드이름 
		System.out.println("/test1 실행");                          
		return "test1";         // JSP 이름 
	}            
	
	@RequestMapping("/test2")
	public String test2() {
		System.out.println("/test2 실행");
		
		String nextPage = "sub/test2";
		
		return nextPage;
	}
	
	
	@RequestMapping("/json")
	@ResponseBody  // return의 글자들만 출력함
	public String json() {
		System.out.println("/json실행");
		
		return "{'key1':'value1', 'key2':'value2'}";
	}
	
	@RequestMapping("/ajax")
	public String ajax() {
		System.out.println("/ajax실행");
		return "ajax";
	
	}
	
		
	}
