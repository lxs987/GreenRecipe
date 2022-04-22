package com.greenrecipe.main.vo;

import java.sql.Date;

import lombok.Data;


@Data
public class PayVO {
private int	pay_num ;
private int	pay_buyerNum ;
private String	pay_itemNum ;
private String	pay_itemName; 
private int	pay_deliveryNum;
private int	pay_price;
private Date	pay_date;
private String	pay_deliveryState ;
private int	pay_reviewYN;





public PayVO() {
	super();

}



public PayVO(int pay_num, int pay_buyerNum, String pay_itemNum, String pay_itemName, int pay_deliveryNum, int pay_price,
		Date pay_date, String pay_deliveryState, int pay_reviewYN) {
	super();
	this.pay_num = pay_num;
	this.pay_buyerNum = pay_buyerNum;
	this.pay_itemNum = pay_itemNum;
	this.pay_itemName = pay_itemName;
	this.pay_deliveryNum = pay_deliveryNum;
	this.pay_price = pay_price;
	this.pay_date = pay_date;
	this.pay_deliveryState = pay_deliveryState;
	this.pay_reviewYN = pay_reviewYN;
}



public int getPay_num() {
	return pay_num;
}
public void setPay_num(int pay_num) {
	this.pay_num = pay_num;
}
public int getPay_buyerNum() {
	return pay_buyerNum;
}
public void setPay_buyerNum(int pay_buyerNum) {
	this.pay_buyerNum = pay_buyerNum;
}
public String getPay_itemNum() {
	return pay_itemNum;
}
public void setPay_itemNum(String pay_itemNum) {
	this.pay_itemNum = pay_itemNum;
}
public String getPay_itemName() {
	return pay_itemName;
}
public void setPay_itemName(String pay_itemName) {
	this.pay_itemName = pay_itemName;
}
public int getPay_deliveryNum() {
	return pay_deliveryNum;
}
public void setPay_deliveryNum(int pay_deliveryNum) {
	this.pay_deliveryNum = pay_deliveryNum;
}
public int getPay_price() {
	return pay_price;
}
public void setPay_price(int pay_price) {
	this.pay_price = pay_price;
}
public Date getPay_date() {
	return pay_date;
}
public void setPay_date(Date pay_date) {
	this.pay_date = pay_date;
}
public String getPay_deliveryState() {
	return pay_deliveryState;
}
public void setPay_deliveryState(String pay_deliveryState) {
	this.pay_deliveryState = pay_deliveryState;
}
public int getPay_reviewYN() {
	return pay_reviewYN;
}
public void setPay_reviewYN(int pay_reviewYN) {
	this.pay_reviewYN = pay_reviewYN;
}
}
