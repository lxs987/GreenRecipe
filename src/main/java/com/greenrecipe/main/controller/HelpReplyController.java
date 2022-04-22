package com.greenrecipe.main.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.greenrecipe.main.service.GreenRecipeService;
import com.greenrecipe.main.vo.ReplyVO;

@RestController
public class HelpReplyController {
	
	@Resource(name = "greenrecipeService") 
	private GreenRecipeService greenrecipeService;
	
	@RequestMapping(value = "replyData/{write_group}", produces = "application/json; charset=UTF-8")
	public ArrayList<ReplyVO> replyData(@PathVariable int write_group) {
		return greenrecipeService.replyList(write_group);
	}
	
	@PostMapping(value = "/insertHelpReply", produces = "application/json; charset=UTF-8")
	public String insertHelpReply(@RequestBody Map<String, Object> map) throws Exception {
		ReplyVO vo = new ReplyVO();
		vo.setWrite_group(Integer.parseInt((String)map.get("help_num")));
		vo.setReply_title((String)map.get("reply_title"));
		vo.setReply_content((String)map.get("reply_content"));
		greenrecipeService.insertHelpReply(vo);
		return "{\"result\" : true}";
	}
}
