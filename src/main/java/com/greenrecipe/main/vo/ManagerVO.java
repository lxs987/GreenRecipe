package com.greenrecipe.main.vo;

import lombok.Data;

@Data
public class ManagerVO {

	
	private int manager_num;
	private String manager_id;
	private String manager_password;
	private String manager_code;
	
	
	
	public ManagerVO(int manager_num, String manager_id, String manager_password, String manager_code) {
		super();
		this.manager_num = manager_num;
		this.manager_id = manager_id;
		this.manager_password = manager_password;
		this.manager_code = manager_code;
	}



	public ManagerVO() {
		super();
	}



	public int getManager_num() {
		return manager_num;
	}



	public void setManager_num(int manager_num) {
		this.manager_num = manager_num;
	}



	public String getManager_id() {
		return manager_id;
	}



	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
	}



	public String getManager_password() {
		return manager_password;
	}



	public void setManager_password(String manager_password) {
		this.manager_password = manager_password;
	}



	public String getManager_code() {
		return manager_code;
	}



	public void setManager_code(String manager_code) {
		this.manager_code = manager_code;
	}

	
	
	
	
	
	
	
	
	
	
	
}
