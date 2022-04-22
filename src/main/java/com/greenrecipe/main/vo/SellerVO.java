package com.greenrecipe.main.vo;

import lombok.Data;



@Data
public class SellerVO {


	
	private int seller_num;
	private String seller_id;
	private String seller_password;
	private String seller_name;
	private String seller_email;
	private String seller_storeName;
	private String seller_storeAddr;
	private String seller_import;
	private String seller_phone;
	private int seller_access;
	
	
	public SellerVO(int seller_num, String seller_id, String seller_password, String seller_name, String seller_email,
			String seller_storeName, String seller_storeAddr, String seller_import, String seller_phone,
			int seller_access) {
		super();
		this.seller_num = seller_num;
		this.seller_id = seller_id;
		this.seller_password = seller_password;
		this.seller_name = seller_name;
		this.seller_email = seller_email;
		this.seller_storeName = seller_storeName;
		this.seller_storeAddr = seller_storeAddr;
		this.seller_import = seller_import;
		this.seller_phone = seller_phone;
		this.seller_access = seller_access;
	}


	public SellerVO() {
		super();
	
	}


	public int getSeller_num() {
		return seller_num;
	}


	public void setSeller_num(int seller_num) {
		this.seller_num = seller_num;
	}


	public String getSeller_id() {
		return seller_id;
	}


	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}


	public String getSeller_password() {
		return seller_password;
	}


	public void setSeller_password(String seller_password) {
		this.seller_password = seller_password;
	}


	public String getSeller_name() {
		return seller_name;
	}


	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}


	public String getSeller_email() {
		return seller_email;
	}


	public void setSeller_email(String seller_email) {
		this.seller_email = seller_email;
	}


	public String getSeller_storeName() {
		return seller_storeName;
	}


	public void setSeller_storeName(String seller_storeName) {
		this.seller_storeName = seller_storeName;
	}


	public String getSeller_storeAddr() {
		return seller_storeAddr;
	}


	public void setSeller_storeAddr(String seller_storeAddr) {
		this.seller_storeAddr = seller_storeAddr;
	}


	public String getSeller_import() {
		return seller_import;
	}


	public void setSeller_import(String seller_import) {
		this.seller_import = seller_import;
	}


	public String getSeller_phone() {
		return seller_phone;
	}


	public void setSeller_phone(String seller_phone) {
		this.seller_phone = seller_phone;
	}


	public int getSeller_access() {
		return seller_access;
	}


	public void setSeller_access(int seller_access) {
		this.seller_access = seller_access;
	}
	
	
	
	
	
	
	
	
}
