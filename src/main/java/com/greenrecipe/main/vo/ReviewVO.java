package com.greenrecipe.main.vo;

import java.sql.Date;

import lombok.Data;


@Data
public class ReviewVO {
	private int review_num;
	private int review_buyerNum;
	private int review_itemNum ;
	private String review_content;
	private String review_image;
	private int review_star;
	private int review_reco;
	private Date review_date;
	
	
	public int getReview_num() {
		return review_num;
	}
	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}
	public int getReview_buyerNum() {
		return review_buyerNum;
	}
	public void setReview_buyerNum(int review_buyerNum) {
		this.review_buyerNum = review_buyerNum;
	}
	public int getReview_itemNum() {
		return review_itemNum;
	}
	public void setReview_itemNum(int review_itemNum) {
		this.review_itemNum = review_itemNum;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public String getReview_image() {
		return review_image;
	}
	public void setReview_image(String review_image) {
		this.review_image = review_image;
	}
	public int getReview_star() {
		return review_star;
	}
	public void setReview_star(int review_star) {
		this.review_star = review_star;
	}
	public int getReview_reco() {
		return review_reco;
	}
	public void setReview_reco(int review_reco) {
		this.review_reco = review_reco;
	}
	public Date getReview_date() {
		return review_date;
	}
	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}

}
