package com.greenrecipe.main.service.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.greenrecipe.main.vo.CateVO;

@Mapper
public interface CateDAO {
	
	CateVO cateInfo(int cateNum);
	
	ArrayList <CateVO> getAllCate();
}
