package com.greenrecipe.main.service.dao;

import org.apache.ibatis.annotations.Mapper;

import com.greenrecipe.main.vo.GradeVO;

@Mapper
public interface GradeDAO {
	
	GradeVO getGradeInfo(GradeVO gradeVO);

	GradeVO getGrade(GradeVO gradeVO);
}
