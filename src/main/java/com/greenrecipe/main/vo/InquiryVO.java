package com.greenrecipe.main.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class InquiryVO {
	private int inquiry_num;
	private int inquiry_itemNum;
	private String inquiry_itemName;

	public String getInquiry_itemName() {
		return inquiry_itemName;
	}

	public void setInquiry_itemName(String inquiry_itemName) {
		this.inquiry_itemName = inquiry_itemName;
	}

	private int inquiry_buyerNum;
	private String inquiry_sellerId;
	private String inquiry_content;
	private Date inquiry_date;
	private String inquiry_answerYN;
	private String inquiry_answerContent;

	public int getInquiry_num() {
		return inquiry_num;
	}

	public void setInquiry_num(int inquiry_num) {
		this.inquiry_num = inquiry_num;
	}

	public int getInquiry_itemNum() {
		return inquiry_itemNum;
	}

	public void setInquiry_itemNum(int inquiry_itemNum) {
		this.inquiry_itemNum = inquiry_itemNum;
	}

	public int getInquiry_buyerNum() {
		return inquiry_buyerNum;
	}

	public void setInquiry_buyerNum(int inquiry_buyerNum) {
		this.inquiry_buyerNum = inquiry_buyerNum;
	}

	public String getInquiry_sellerId() {
		return inquiry_sellerId;
	}

	public void setInquiry_sellerId(String inquiry_sellerId) {
		this.inquiry_sellerId = inquiry_sellerId;
	}

	public String getInquiry_content() {
		return inquiry_content;
	}

	public void setInquiry_content(String inquiry_content) {
		this.inquiry_content = inquiry_content;
	}

	public Date getInquiry_date() {
		return inquiry_date;
	}

	public void setInquiry_date(Date inquiry_date) {
		this.inquiry_date = inquiry_date;
	}

	public String getInquiry_answerYN() {
		return inquiry_answerYN;
	}

	public void setInquiry_answerYN(String inquiry_answerYN) {
		this.inquiry_answerYN = inquiry_answerYN;
	}

	public String getInquiry_answerContent() {
		return inquiry_answerContent;
	}

	public void setInquiry_answerContent(String inquiry_answerContent) {
		this.inquiry_answerContent = inquiry_answerContent;
	}

	public InquiryVO(int inquiry_num, int inquiry_itemNum, String inquiry_itemName, int inquiry_buyerNum,
			String inquiry_sellerId, String inquiry_content, Date inquiry_date, String inquiry_answerYN,
			String inquiry_answerContent) {
		super();
		this.inquiry_num = inquiry_num;
		this.inquiry_itemNum = inquiry_itemNum;
		this.inquiry_itemName = inquiry_itemName;
		this.inquiry_buyerNum = inquiry_buyerNum;
		this.inquiry_sellerId = inquiry_sellerId;
		this.inquiry_content = inquiry_content;
		this.inquiry_date = inquiry_date;
		this.inquiry_answerYN = inquiry_answerYN;
		this.inquiry_answerContent = inquiry_answerContent;
	}

	public InquiryVO() {
		super();
		
	}

	
	
	
	
	
}
