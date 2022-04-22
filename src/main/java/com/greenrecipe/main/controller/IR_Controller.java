package com.greenrecipe.main.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.greenrecipe.main.service.GreenRecipeService;
import com.greenrecipe.main.vo.BuyerVO;
import com.greenrecipe.main.vo.CartVO;
import com.greenrecipe.main.vo.IR_VO;


@Controller
public class IR_Controller {
	
	@Resource(name = "greenrecipeService") 
	private GreenRecipeService greenrecipeService; 


	
	
	
	
	
	
	
	
	
	
	
	//--------------------------------- CS -------------------------------------------------
	
	

	
	
	
	
	// 장바구니 출력용
	@RequestMapping("/cart_item2")
	public String cart_item2(Model model, HttpSession session,
			@ModelAttribute("cartVO") CartVO cartVO,
			@ModelAttribute("ir_VO") IR_VO ir_VO
			) throws Exception {
		
		BuyerVO buyervo = (BuyerVO) session.getAttribute("userSession"); 
		
		cartVO.setCart_buyerNum(buyervo.getBuyer_num());
		
		ArrayList<CartVO> cart_list = greenrecipeService.cart_get(cartVO);
												
		
		model.addAttribute("cart_list" ,cart_list);		
		
		//---------------------------------------------------------------
		
		ArrayList<IR_VO> IR_list = greenrecipeService.cart_item2(ir_VO);
			
		model.addAttribute("IR_list" ,IR_list);			
				
		return "sub/cart_item2";								
	}
	
	
	
	
	//  buyer_num을 where로 select
	@RequestMapping("/cart_item")
	public String cart_item(Model model, HttpSession session,
			@ModelAttribute("cartVO") CartVO cartVO,
			@ModelAttribute("ir_VO") IR_VO ir_VO
			) throws Exception {
		
		BuyerVO buyervo = (BuyerVO) session.getAttribute("userSession"); 
		
		cartVO.setCart_buyerNum(buyervo.getBuyer_num());
		
		ArrayList<CartVO> cart_list = greenrecipeService.cart_get(cartVO);
											
		
		model.addAttribute("cart_list" ,cart_list);		
		
		//---------------------------------------------------------------
		ArrayList<IR_VO> IR_list = greenrecipeService.cart_item(ir_VO);
			
		model.addAttribute("IR_list" ,IR_list);			
				
		return "sub/cart_item";								
	}
	
	




	// item_num과 recipe_itemNum 을 조인하여   >>   Item 테이블, recipe 테이블 전체 출력
	@RequestMapping("/IR_all")
	public String IR_all(Model model, HttpSession session,
			@ModelAttribute("ir_VO") IR_VO ir_VO)
	throws Exception {
		

		ArrayList<IR_VO> IR_list = greenrecipeService.IR_all(ir_VO);
		
		model.addAttribute("IR_list", IR_list);
		
		return "sub/IR_all";
	}
	
	
	
	
	
	
	// item_num과 recipe_itemNum 을 조인하여   >>	item_recipeNum을 where로 검색하여 출력
	@RequestMapping(value = "/IR_like")
	public String IR_like(Model model,
			@ModelAttribute("ir_VO") IR_VO ir_VO)
	throws Exception {

		ArrayList<IR_VO> IR_list = greenrecipeService.IR_like(ir_VO);
	
		model.addAttribute("IR_list", IR_list);
		
		return "sub/IR_like";
	}
	
	
	
	

	
	
	

	//--------------------------------- CS -------------------------------------------------
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
}
