package com.greenrecipe.main.service.dao;

import org.apache.ibatis.annotations.Mapper;

import com.greenrecipe.main.vo.ManagerVO;


@Mapper
public interface ManagerDAO {

	 ManagerVO manager_loginForm(ManagerVO managerVO);
	
	 ManagerVO manager_codeCheck(ManagerVO managerVO);
	 
	 ManagerVO manager_loginCheck(ManagerVO managerVO);
	
}