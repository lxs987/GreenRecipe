package com.greenrecipe.main.vo;


import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import lombok.Data;

@Data
public class HelpVO {
	private int help_num;
	private String help_buyerId;
	private String help_title;
	private String help_content;
	private String help_date;
	public int getHelp_num() {
		return help_num;
	}
	public void setHelp_num(int help_num) {
		this.help_num = help_num;
	}
	public String getHelp_buyerId() {
		return help_buyerId;
	}
	public void setHelp_buyerId(String help_buyerId) {
		this.help_buyerId = help_buyerId;
	}
	public String getHelp_title() {
		return help_title;
	}
	public void setHelp_title(String help_title) {
		this.help_title = help_title;
	}
	public String getHelp_content() {
		return help_content;
	}
	public void setHelp_content(String help_content) {
		this.help_content = help_content;
	}
	public String getHelp_date() {
		return help_date;
	}
	public void setHelp_date(Timestamp help_date) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm ");
		this.help_date = format.format(help_date);
	}
	public HelpVO(int help_num, String help_buyerId, String help_title, String help_content, String help_date) {
		super();
		this.help_num = help_num;
		this.help_buyerId = help_buyerId;
		this.help_title = help_title;
		this.help_content = help_content;
		this.help_date = help_date;
	}
	public HelpVO() {
		super();
		
	}

	
	

	
	
	
	
	
	
	
}
