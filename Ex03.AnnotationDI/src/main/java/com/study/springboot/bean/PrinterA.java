package com.study.springboot.bean;

import org.springframework.stereotype.Component;

@Component("printerA")
public class PrinterA implements Printer{

	public void print(String message) {
		
		System.out.println("PrinterA : "+ message);
	}
	
}
