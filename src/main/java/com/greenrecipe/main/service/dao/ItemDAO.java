package com.greenrecipe.main.service.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.greenrecipe.main.vo.ItemVO;


@Mapper
public interface ItemDAO {
				
					//CS
	
	ArrayList<ItemVO> getAllItem(ItemVO itemVO);
	
	ArrayList<ItemVO> getIteminfo(ItemVO itemVO);
	
	ItemVO Select_item(ItemVO itemVO);
	
	ArrayList<ItemVO> Select_item2(ItemVO itemVO);
	
	ItemVO itemInfo(ItemVO itemVO);
	
	
	
	
	
	
				//HG
	
	ItemVO itemLikeInfo (int itemLikeNum)  throws Exception;
	
	
	ArrayList<ItemVO> itemBestList ();
	
	ArrayList<ItemVO> itemNewList ();
	

	ArrayList<ItemVO> itemSaleList ();
	
	
	ArrayList<ItemVO> itemSearchList (String keyword);
	
	ArrayList<ItemVO> itemCateList (int cateNum);
	
	
	
	
	
	
	
	
					// JG
	
	ItemVO getItemInfo (ItemVO itemVO);
	
	ArrayList<ItemVO> recipeItem(int recipeNum);
	
	void updateItemStockSelled(ItemVO itemVO);
	
	
	
	
	
	
}