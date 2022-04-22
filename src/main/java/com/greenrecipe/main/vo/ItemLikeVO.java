package com.greenrecipe.main.vo;

import lombok.Data;

@Data
public class ItemLikeVO {

	private int itemLike_id ;
	private int itemLike_sepe;
	private int itemLike_buyerNum;
	private int itemLike_itemNum;
	
	
	public int getItemLike_id() {
		return itemLike_id;
	}
	public void setItemLike_id(int itemLike_id) {
		this.itemLike_id = itemLike_id;
	}
	public int getItemLike_sepe() {
		return itemLike_sepe;
	}
	public void setItemLike_sepe(int itemLike_sepe) {
		this.itemLike_sepe = itemLike_sepe;
	}

	public int getItemLike_buyerNum() {
		return itemLike_buyerNum;
	}
	public void setItemLike_buyerNum(int itemLike_buyerNum) {
		this.itemLike_buyerNum = itemLike_buyerNum;
	}
	public int getItemLike_itemNum() {
		return itemLike_itemNum;
	}
	public void setItemLike_itemNum(int itemLike_itemNum) {
		this.itemLike_itemNum = itemLike_itemNum;
	}
}
