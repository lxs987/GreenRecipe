package com.greenrecipe.main.service.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.greenrecipe.main.vo.SellerVO;

@Mapper
public interface SellerDAO {
	
	
	 ArrayList<SellerVO> sellerAll(SellerVO sellerVO);
		
 	 SellerVO seller_loginCheck(SellerVO sellerVO);
		
		
	 SellerVO getSellerNum(SellerVO sellerVO); 
		
	 void updateSeller(SellerVO sellerVO);
	 
	 void deleteSeller(SellerVO sellerVO);
	 
	 void updateAccess(SellerVO sellerVO);

	 int accessCount();
	 
}
