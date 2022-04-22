package com.greenrecipe.main.vo;

import lombok.Data;

//create table grade (
//grade_id varchar2(20),
//grade_name varchar2(20), 
//grade_per number(5)
//);

@Data
public class GradeVO {
	
	private String grade_id;
	private String grade_name;
	private int grade_per;
	public GradeVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GradeVO(String grade_id, String grade_name, int grade_per) {
		super();
		this.grade_id = grade_id;
		this.grade_name = grade_name;
		this.grade_per = grade_per;
	}
	public String getGrade_id() {
		return grade_id;
	}
	public void setGrade_id(String grade_id) {
		this.grade_id = grade_id;
	}
	public String getGrade_name() {
		return grade_name;
	}
	public void setGrade_name(String grade_name) {
		this.grade_name = grade_name;
	}
	public int getGrade_per() {
		return grade_per;
	}
	public void setGrade_per(int grade_per) {
		this.grade_per = grade_per;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
