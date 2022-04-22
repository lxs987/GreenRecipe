package com.greenrecipe.main.service.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.greenrecipe.main.vo.CouponVO;


@Mapper
public interface CouponDAO {

	// buyerNum을 받아 가지고 있는 쿠폰 리스트 모두 출력하는 메소드
	// 결제 페이지, 마이페이지에서 사용
	ArrayList<CouponVO> buyerCouponList(int buyerNum);
}
