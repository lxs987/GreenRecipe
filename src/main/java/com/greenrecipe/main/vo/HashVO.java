package com.greenrecipe.main.vo;

import lombok.Data;

@Data
public class HashVO {
	
	private int hash_num;
	private String hash_name;
	private int cateNum;
	
	public HashVO() {
		super();
	}
	
	public HashVO(int hash_num, String hash_name, int cateNum) {
		super();
		this.hash_num = hash_num;
		this.hash_name = hash_name;
		this.cateNum = cateNum;
	}
	
	public int getHash_num() {
		return hash_num;
	}
	public void setHash_num(int Hash_num) {
		this.hash_num = Hash_num;
	}
	public String getHash_name() {
		return hash_name;
	}
	public void setHash_name(String hash_name) {
		this.hash_name = hash_name;
	}
	public int getCateNum() {
		return cateNum;
	}
	public void setCateNum(int cateNum) {
		this.cateNum = cateNum;
	}
	
}