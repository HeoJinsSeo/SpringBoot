package com.study.springboot.dto;

import java.sql.Date;

public class FoodDTO {
	/*food_id.nextval,
      exp_date ,
      title ,
      exp_exp ,
      exp_sum ,
      exp_total 
	 */
	private int food_id;
	private Date exp_date;
	private String title;
	private int exp_exp;
	private String exp_sum;
	private int exp_total;
	
	
	public int getFood_id() {
		return food_id;
	}
	public void setFood_id(int food_id) {
		this.food_id = food_id;
	}
	public Date getExp_date() {
		return exp_date;
	}
	public void setExp_date(Date exp_date) {
		this.exp_date = exp_date;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getExp_exp() {
		return exp_exp;
	}
	public void setExp_exp(int exp_exp) {
		this.exp_exp = exp_exp;
	}
	public String getExp_sum() {
		return exp_sum;
	}
	public void setExp_sum(String exp_sum) {
		this.exp_sum = exp_sum;
	}
	public int getExp_total() {
		return exp_total;
	}
	public void setExp_total(int exp_total) {
		this.exp_total = exp_total;
	}
	
	
	@Override
	public String toString() {
		return "FoodDTO [food_id=" + food_id + ", exp_date=" + exp_date + ", title=" + title + ", exp_exp=" + exp_exp
				+ ", exp_sum=" + exp_sum + ", exp_total=" + exp_total + "]";
	}	
	
}
