package com.study.springboot;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {
	
	@RequestMapping("/")
	public @ResponseBody String root() throws Exception{
		return "Model & View";
	}
	
	@RequestMapping("/test1")
	public String test1(Model model) {
		// jsp로 값을 전달하는 방법
		model.addAttribute("name", "홍길동");
		model.addAttribute("address", "서울시 영등포구");
		return "test1";
		
	}
	
	
	@RequestMapping("/mv")   // 주소창에 입력해야 하는 주소
	public ModelAndView test2() {
		System.out.println("/mv 진입");
		// 데이터와 뷰를 동시에 설정이 가능
		//    주소창에 mv와 관련없음   
		//                              ↓  생성자에 jsp 파일명을 지정
//		ModelAndView mv = new ModelAndView("view/myView");
		ModelAndView mv = new ModelAndView();
		
		List<String> list = new ArrayList<>();
		// list 만들기
		list.add("test1");
		list.add("test2");
		list.add("test3");
		
		// list 담기
		// addObject를 이용하여 key, value를 담음
		mv.addObject("lists",list);
		mv.addObject("ObjectTest","테스트입니다.");
		mv.addObject("name", "		홍길동");
		
		// 목적지 jsp담아준다
		// jsp 파일명을 지정, modelAndview는 반드시 setViewName 사용해야 함
		mv.setViewName("view/myView");
		
		return mv;
	}
	
	// el을 입력시 실행하는 주소
	@RequestMapping("/el")  
	public String el() {
		return "el";
	}
	
	@RequestMapping("/jstl")  
	public String jstl() {
		return "jstl";

	}
}
	
	