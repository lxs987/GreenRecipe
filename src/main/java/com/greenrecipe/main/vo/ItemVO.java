package com.greenrecipe.main.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ItemVO {

	private int item_num;
	private String item_name;
	private String item_image;
	private String item_detailImage;
	private int item_price;
	private int item_per;
	private int item_stock;
	private int item_cateNum;
	private Date item_date;
	private int item_reco;
	private int item_selled;
	private String item_hash;
	private int item_recipeNum;
	public int getItem_num() {
		return item_num;
	}
	public void setItem_num(int item_num) {
		this.item_num = item_num;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getItem_image() {
		return item_image;
	}
	public void setItem_image(String item_image) {
		this.item_image = item_image;
	}
	public String getItem_detailImage() {
		return item_detailImage;
	}
	public void setItem_detailImage(String item_detailImage) {
		this.item_detailImage = item_detailImage;
	}
	public int getItem_price() {
		return item_price;
	}
	public void setItem_price(int item_price) {
		this.item_price = item_price;
	}
	public int getItem_per() {
		return item_per;
	}
	public void setItem_per(int item_per) {
		this.item_per = item_per;
	}
	public int getItem_stock() {
		return item_stock;
	}
	public void setItem_stock(int item_stock) {
		this.item_stock = item_stock;
	}
	public int getItem_cateNum() {
		return item_cateNum;
	}
	public void setItem_cateNum(int item_cateNum) {
		this.item_cateNum = item_cateNum;
	}
	public Date getItem_date() {
		return item_date;
	}
	public void setItem_date(Date item_date) {
		this.item_date = item_date;
	}
	public int getItem_reco() {
		return item_reco;
	}
	public void setItem_reco(int item_reco) {
		this.item_reco = item_reco;
	}
	public int getItem_selled() {
		return item_selled;
	}
	public void setItem_selled(int item_selled) {
		this.item_selled = item_selled;
	}
	public String getItem_hash() {
		return item_hash;
	}
	public void setItem_hash(String item_hash) {
		this.item_hash = item_hash;
	}
	public int getItem_recipeNum() {
		return item_recipeNum;
	}
	public void setItem_recipeNum(int item_recipeNum) {
		this.item_recipeNum = item_recipeNum;
	}

	
	
	
	
}
