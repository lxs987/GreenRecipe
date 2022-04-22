package com.greenrecipe.main.service.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.greenrecipe.main.vo.IR_VO;


@Mapper
public interface IR_DAO {


	
	ArrayList<IR_VO> IR_all(IR_VO irVO);
	
	ArrayList<IR_VO> IR_like(IR_VO irVO);
	
	ArrayList<IR_VO> IR_recipe(IR_VO irVO);
	
	ArrayList<IR_VO> recipe_detail(IR_VO irVO);
	
	
	
	
	
	
	
	//cart
	
	
	ArrayList<IR_VO> cart_itemNum(IR_VO irVO);
	
	
	ArrayList<IR_VO> cart_item(IR_VO irVO);
	

	ArrayList<IR_VO> cart_item2(IR_VO irVO);
	
	
	void IR_deleteCart(IR_VO irVO);
	
	
	
	//manager
	

	

}