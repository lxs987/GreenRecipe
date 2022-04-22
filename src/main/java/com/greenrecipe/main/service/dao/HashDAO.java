package com.greenrecipe.main.service.dao;

import org.apache.ibatis.annotations.Mapper;

import com.greenrecipe.main.vo.HashVO;

@Mapper
public interface HashDAO {
	HashVO getHashInfo(HashVO hashVO);
}