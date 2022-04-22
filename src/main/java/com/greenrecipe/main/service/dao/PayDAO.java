package com.greenrecipe.main.service.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.greenrecipe.main.vo.PayVO;

@Mapper
public interface PayDAO {
	
	 	ArrayList<PayVO> payList(int buyerNum) throws Exception;
	 
		void insert_Pay(PayVO payVO);
	 
		void insertPay(PayVO payVO);
	 
		PayVO getPayInfo(int deliveryNum);
		
		
		
		
		 ArrayList<PayVO> payAll(PayVO payVO);
}
