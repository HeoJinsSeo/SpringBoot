package com.study.springboot;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.study.springboot.bean.Config;
import com.study.springboot.bean.Member;
import com.study.springboot.bean.Printer;
import com.study.springboot.bean.PrinterA;
import com.study.springboot.bean.PrinterB;

//@SpringBootApplication
public class Ex02JavaCodeDiApplication {

	public static void main(String[] args) {
		
		
	//	SpringApplication.run(Ex02JavaCodeDiApplication.class, args);
		
		
		System.out.println("Hello world");
		
		// 강한결합
		Printer printer = new PrinterA(); 
		Member member = new Member("이름", "별명", printer);
		member.print();
		
		// 약한결합
		// DI    의존성 주입
		// IoC   제어의 역전
		// Ioc 해서 DI 한다
		
		ApplicationContext context = 
				new AnnotationConfigApplicationContext(Config.class);
		Member member1 = (Member)context.getBean("member1");
		member1.print();
		
		Member member2 = context.getBean("hello", Member.class);
		member2.print();
		
		Printer printer2 = context.getBean("printerB", Printer.class);
		member1.setPrinter(printer2);
		member1.print();
		}
	}

