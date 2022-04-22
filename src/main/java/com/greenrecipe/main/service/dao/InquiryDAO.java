package com.greenrecipe.main.service.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.greenrecipe.main.vo.InquiryVO;

@Mapper
public interface InquiryDAO {
	
	
	ArrayList<InquiryVO> inquiryList(int buyerNum);
	
	ArrayList<InquiryVO> seller_inquiry(String sellerId);

	InquiryVO seller_answer(InquiryVO inquiryVO); 
	
	 void updateAnswer(InquiryVO inquiryVO); 
	
}
