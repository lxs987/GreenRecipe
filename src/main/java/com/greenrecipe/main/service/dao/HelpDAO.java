package com.greenrecipe.main.service.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.greenrecipe.main.vo.HelpVO;
import com.greenrecipe.main.vo.ReplyVO;


@Mapper
public interface HelpDAO {
	
	ArrayList<HelpVO> helpList(HelpVO helpVO, @Param("s") int start, @Param("e") int end);
	
	int helpCount();
	
	int insertHelp(HelpVO helpVO);
	
	HelpVO helpContentView(int help_num);
	
	int updateHelp(HelpVO helpVO);
	
	int deleteHelp(int help_num);
	
	ArrayList<ReplyVO> replyList(int write_group);
	
	void insertHelpReply(ReplyVO replyVO);
	
	
	
	HelpVO helpBuyer(HelpVO helpvo);
	
	void insertHelp2(HelpVO helpVO);
	
	void deleteHelp2(HelpVO helpVO);
	
	void updateHelp2(HelpVO helpVO);
	
	HelpVO helpBuyer2(HelpVO helpvo);
	
	void updateHelp3(HelpVO helpVO);
	
	
}
