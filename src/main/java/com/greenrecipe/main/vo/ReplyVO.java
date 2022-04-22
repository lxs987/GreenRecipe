package com.greenrecipe.main.vo;

import java.sql.Timestamp;

public class ReplyVO {
	
	private String reply_title;
	private String reply_content;
	private int write_group;
	private Timestamp write_date;
	
	public ReplyVO() {
		super();
	}
	
	public ReplyVO(String reply_title, String reply_content, int write_group, Timestamp write_date) {
		super();
		this.reply_title = reply_title;
		this.reply_content = reply_content;
		this.write_group = write_group;
		this.write_date = write_date;
	}

	public String getReply_title() {
		return reply_title;
	}

	public void setReply_title(String reply_title) {
		this.reply_title = reply_title;
	}

	public String getReply_content() {
		return reply_content;
	}

	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}

	public int getWrite_group() {
		return write_group;
	}

	public void setWrite_group(int write_group) {
		this.write_group = write_group;
	}

	public Timestamp getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Timestamp write_date) {
		this.write_date = write_date;
	}
	
}