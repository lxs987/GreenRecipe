package com.greenrecipe.main.service.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.greenrecipe.main.vo.CartVO;


@Mapper
public interface CartDAO {

				
				//CS
	ArrayList<CartVO> cart_get(CartVO cartVO);
	
	void insertCart(CartVO cartVO);
	
	void deleteCart(CartVO cartVO);
	
	
	
				// JG
	void itemCart(CartVO cartVO);
	
	CartVO getCartinfo(CartVO cartVO);
	
	
	
	
}