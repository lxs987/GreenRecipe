package com.greenrecipe.main.service.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.greenrecipe.main.vo.ReviewVO;

@Mapper
public interface ReviewDAO {
	
			//HG
  ArrayList<ReviewVO> reviewList(int buyerNum);
  
  void deleteReview (int reviewNum);
  
  void insertReview (ReviewVO reviewvo);
  
  
  
  // itemDetail.jsp
  ArrayList<ReviewVO> itemReviewList(int itemNum);
  
  int itemReviewNumber(int itemNum);
  
  
}
