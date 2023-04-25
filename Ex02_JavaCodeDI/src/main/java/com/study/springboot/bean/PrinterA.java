package com.study.springboot.bean;

public class PrinterA implements Printer{

	public void print(String message) {
		
		System.out.println("PrinterA : "+ message);
	}
}
