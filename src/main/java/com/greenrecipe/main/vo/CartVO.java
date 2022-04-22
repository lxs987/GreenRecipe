package com.greenrecipe.main.vo;

import lombok.Data;



@Data
public class CartVO {
	
	
	private int cart_id;
	private int cart_buyerNum;
	private int cart_itemNum;
	private int cart_count;
	private int cart_price;
	
	
	
	public CartVO() {
		super();
	}



	public CartVO(int cart_id, int cart_buyerNum, int cart_itemNum, int cart_count, int cart_price) {
		super();
		this.cart_id = cart_id;
		this.cart_buyerNum = cart_buyerNum;
		this.cart_itemNum = cart_itemNum;
		this.cart_count = cart_count;
		this.cart_price = cart_price;
	}



	public int getCart_id() {
		return cart_id;
	}



	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}



	public int getCart_buyerNum() {
		return cart_buyerNum;
	}



	public void setCart_buyerNum(int cart_buyerNum) {
		this.cart_buyerNum = cart_buyerNum;
	}



	public int getCart_itemNum() {
		return cart_itemNum;
	}



	public void setCart_itemNum(int cart_itemNum) {
		this.cart_itemNum = cart_itemNum;
	}



	public int getCart_count() {
		return cart_count;
	}



	public void setCart_count(int cart_count) {
		this.cart_count = cart_count;
	}



	public int getCart_price() {
		return cart_price;
	}



	public void setCart_price(int cart_price) {
		this.cart_price = cart_price;
	}
	
	
	
	
	
	
	
	
	
	
}
