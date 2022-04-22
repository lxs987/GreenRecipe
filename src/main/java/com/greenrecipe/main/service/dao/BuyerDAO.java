package com.greenrecipe.main.service.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.greenrecipe.main.vo.BuyerVO;


@Mapper
public interface BuyerDAO {

	
			//CS
	
	ArrayList<BuyerVO> getAllBuyer(BuyerVO buyerVO);
	
	BuyerVO loginCheck(BuyerVO buyerVO);
	
	void insertBuyer(BuyerVO buyerVO);  
	
	BuyerVO getBuyerinfoId(BuyerVO menuVO);
	
	BuyerVO getBuyerNum(BuyerVO buyerVO);
	
	void updateBuyer(BuyerVO buyerVO);  
	
	void deleteBuyer(BuyerVO buyerVO);
	
	
	
	
	
	
		 	// HG
	
	BuyerVO getBuyerInfo(BuyerVO  buyerVO);
	
	
	
	
	
			// JG
	
	void updateBuyerPayComplete(BuyerVO buyerVO);
	
	
	
	
	
			//YS
	
	// idcheck, codecheck
	
	public int idCheck(String buyer_id);
	public int codeCheck(String buyer_recomcode);
		
	
	
}