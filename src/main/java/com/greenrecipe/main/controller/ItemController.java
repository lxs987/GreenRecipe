package com.greenrecipe.main.controller;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.greenrecipe.main.service.GreenRecipeService;
import com.greenrecipe.main.vo.ItemVO;


@Controller
public class ItemController {
	
	@Resource(name = "greenrecipeService") 
	private GreenRecipeService greenrecipeService; 


	
	
	
	
	
	
	
	
	
	//--------------------------------- CS -------------------------------------------------
	
	
	
	
	//item테이블 전체 출력
	@RequestMapping("/item_select")
	public String item_select(@ModelAttribute("itemVO") ItemVO itemVO,
			Model model)
			throws Exception { 

		ArrayList<ItemVO> itemlist = greenrecipeService.getAllItem(itemVO);
		model.addAttribute("itemlist" ,itemlist);
		
		return "sub/item_select";
	}
	
	


	@RequestMapping("/item_all")
	public String recipe(@ModelAttribute("itemVO") ItemVO itemVO, Model model)
			throws Exception { 

		ArrayList<ItemVO> itemlist = greenrecipeService.getAllItem(itemVO);
		model.addAttribute("itemlist" ,itemlist);
		
		return "item_all";
	}
	
	
	
	
	
	
	
	
	
	// item_recipenum 넣어서 item 데이터 출력
	@RequestMapping(value = "get_item2")
	public String get_item2(@ModelAttribute("itemVO") ItemVO itemVO,
			Model model)
			throws Exception { 
		
		 
	 	ArrayList<ItemVO> get_item = greenrecipeService.Select_item2(itemVO);
	 	
		
		model.addAttribute("get_item" ,get_item );
		
		return "/sub/test2";
	}

	



	//--------------------------------- CS -------------------------------------------------

	
	
	
	
	
}
