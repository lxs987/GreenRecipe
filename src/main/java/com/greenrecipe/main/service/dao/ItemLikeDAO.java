package com.greenrecipe.main.service.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.greenrecipe.main.vo.ItemLikeVO;

@Mapper
public interface ItemLikeDAO {

	ArrayList<ItemLikeVO> itemLikeNum(ItemLikeVO itemLikeVO); 
	
	void deleteItemLike(int itemLikeNum);
	
	ArrayList<ItemLikeVO> recipeLikeNum(ItemLikeVO itemLikeVO);
	void deleteRecipeLike(int itemLikeNum);
	
	void likeButton(ItemLikeVO itemLikeVO);
}
