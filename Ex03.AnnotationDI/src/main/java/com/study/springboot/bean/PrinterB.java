package com.study.springboot.bean;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Component;

@Component
@Primary
public class PrinterB implements Printer{

	@Override
	public void print(String message) {
		
		System.out.println("PrinterB : "+ message);
		
	}

	
}
