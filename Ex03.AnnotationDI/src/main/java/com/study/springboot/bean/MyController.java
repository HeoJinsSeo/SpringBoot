package com.study.springboot.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
// Bean으로 등록; 스프링이 원할때 가져다 쓸 수 있게 한다
public class MyController {

	@Autowired
	// Bean으로 등록되어 있는 클래스들 중에서 
	// Member 타입 변수에 들어갈 수 있는 클래스를 찾아서 (scan)
	// new 해서 (IoC) (그런데, 이미 new가 되어있는게 있다면 그것을 재활용)
	// 변수에 넣어준다 (DI)
	Member member1;
	
	@Autowired
	Member member2;
	
	@Autowired
	@Qualifier("printerB")  // 빈 이름으로 가져온다
	Printer printer;
	
	
	
	@RequestMapping("/")
	// 브라우저에 입력하는 주소
	// 주소가 맞는 메소드를 실행
	// 클래스에 관계 없이 유일해야 한다 
	@ResponseBody   // 글자로 돌려줄 때
	public String root() {
		//return "<h1>hello world</h1>";
	// System.out.println("!!!");
	// return "{'key' : 'value'}";	
	
		member1.print();  // printerA를 이용해서 출력
		
		member1.setPrinter(printer);
		member1.print();  // printerB를 이용해서 출력
		
		if(member1 == member2) {
			System.out.println("동일한 객체입니다; 싱글톤입니다");
		} else {
			System.out.println("서로 다른 객체입니다.");
		}
		
		member2.print();
		
		String html = "";
		
		html += "<!DOCTYPE html>";
		html += "<html>";
		html += "<head>";
		html += "<meta charset='UTF-8'>";
		html += "<title>Insert title here</title>";
		html += "</head>";
		html += "<body>";
		html += "<div>";
		html += "   hello world<br>";
		
		int a = 10;
		System.out.println(a);
		html += "<h1>hello world"+a+"</h1>";
		html += "</div>";
		html += "</body>";
		html += "</html>";
		
		
		
		return html;
	}
}
