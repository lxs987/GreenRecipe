package com.greenrecipe.main.vo;

import lombok.Data;



@Data
public class BuyerVO {
	
	
	
	
	 private int buyer_num;
	 private String buyer_id;
	 private String buyer_email;
	 private String buyer_password;
	 private String buyer_name; 
	 private String buyer_code;
	 private String buyer_addr;
	 private String buyer_phone;
	 private String buyer_grade;
	 private String buyer_hash;
	 private int buyer_point;
	 private String buyer_couponNum;
	 private int buyer_payment;
	 
	 
	public int getBuyer_num() {
		return buyer_num;
	}
	public void setBuyer_num(int buyer_num) {
		this.buyer_num = buyer_num;
	}
	public String getBuyer_id() {
		return buyer_id;
	}
	public void setBuyer_id(String buyer_id) {
		this.buyer_id = buyer_id;
	}
	public String getBuyer_email() {
		return buyer_email;
	}
	public void setBuyer_email(String buyer_email) {
		this.buyer_email = buyer_email;
	}
	public String getBuyer_password() {
		return buyer_password;
	}
	public void setBuyer_password(String buyer_password) {
		this.buyer_password = buyer_password;
	}
	public String getBuyer_name() {
		return buyer_name;
	}
	public void setBuyer_name(String buyer_name) {
		this.buyer_name = buyer_name;
	}
	public String getBuyer_code() {
		return buyer_code;
	}
	public void setBuyer_code(String buyer_code) {
		this.buyer_code = buyer_code;
	}
	public String getBuyer_addr() {
		return buyer_addr;
	}
	public void setBuyer_addr(String buyer_addr) {
		this.buyer_addr = buyer_addr;
	}
	public String getBuyer_phone() {
		return buyer_phone;
	}
	public void setBuyer_phone(String buyer_phone) {
		this.buyer_phone = buyer_phone;
	}
	public String getBuyer_grade() {
		return buyer_grade;
	}
	public void setBuyer_grade(String buyer_grade) {
		this.buyer_grade = buyer_grade;
	}
	public String getBuyer_hash() {
		return buyer_hash;
	}
	public void setBuyer_hash(String buyer_hash) {
		this.buyer_hash = buyer_hash;
	}
	public int getBuyer_point() {
		return buyer_point;
	}
	public void setBuyer_point(int buyer_point) {
		this.buyer_point = buyer_point;
	}
	public String getBuyer_couponNum() {
		return buyer_couponNum;
	}
	public void setBuyer_couponNum(String buyer_couponNum) {
		this.buyer_couponNum = buyer_couponNum;
	}
	public int getBuyer_payment() {
		return buyer_payment;
	}
	public void setBuyer_payment(int buyer_payment) {
		this.buyer_payment = buyer_payment;
	}
	public BuyerVO() {
		super();
	
	}
	public BuyerVO(int buyer_num, String buyer_id, String buyer_email, String buyer_password, String buyer_name,
			String buyer_code, String buyer_addr, String buyer_phone, String buyer_grade, String buyer_hash,
			int buyer_point, String buyer_couponNum, int buyer_payment) {
		super();
		this.buyer_num = buyer_num;
		this.buyer_id = buyer_id;
		this.buyer_email = buyer_email;
		this.buyer_password = buyer_password;
		this.buyer_name = buyer_name;
		this.buyer_code = buyer_code;
		this.buyer_addr = buyer_addr;
		this.buyer_phone = buyer_phone;
		this.buyer_grade = buyer_grade;
		this.buyer_hash = buyer_hash;
		this.buyer_point = buyer_point;
		this.buyer_couponNum = buyer_couponNum;
		this.buyer_payment = buyer_payment;
	}
	 
	 
	 
	 
	 
}
