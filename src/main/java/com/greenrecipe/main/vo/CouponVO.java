package com.greenrecipe.main.vo;

import lombok.Data;

//create table coupon(
//coupon_num number(3), 
//coupon_name varchar2(30), 
//coupon_per number(10),
//coupon_buyerNum number(10)
//);

@Data
public class CouponVO {
	
	private int coupon_num;
	private String coupon_name;
	private int coupon_per;
	private int coupon_buyerNum;
	public int getCoupon_num() {
		return coupon_num;
	}
	public void setCoupon_num(int coupon_num) {
		this.coupon_num = coupon_num;
	}
	public String getCoupon_name() {
		return coupon_name;
	}
	public void setCoupon_name(String coupon_name) {
		this.coupon_name = coupon_name;
	}
	public int getCoupon_per() {
		return coupon_per;
	}
	public void setCoupon_per(int coupon_per) {
		this.coupon_per = coupon_per;
	}
	public int getCoupon_buyerNum() {
		return coupon_buyerNum;
	}
	public void setCoupon_buyerNum(int coupon_buyerNum) {
		this.coupon_buyerNum = coupon_buyerNum;
	}
	
	
	public CouponVO() {
		super();

	}
	public CouponVO(int coupon_num, String coupon_name, int coupon_per, int coupon_buyerNum) {
		super();
		this.coupon_num = coupon_num;
		this.coupon_name = coupon_name;
		this.coupon_per = coupon_per;
		this.coupon_buyerNum = coupon_buyerNum;
	}

	
	
	
	
	
	
}
