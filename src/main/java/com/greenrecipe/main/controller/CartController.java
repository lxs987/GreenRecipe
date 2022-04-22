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
import com.greenrecipe.main.vo.ItemVO;


@Controller
public class CartController {
	
	
	@Resource(name = "greenrecipeService") 
	private GreenRecipeService greenrecipeService; 


	
	
	
	
	
	
	
	
	
	
	
	//--------------------------------- CS -------------------------------------------------
	
	
	
	
	
	
	
	
	// 장바구니 페이지 메인
	@RequestMapping("/shopping_cart")
	public String shopping_cart(Model model, HttpSession session,
			@ModelAttribute("itemVO") ItemVO itemVO,
			@ModelAttribute("cartVO") CartVO cartVO,
			@ModelAttribute("ir_VO") IR_VO ir_VO
			) throws Exception {
		
		BuyerVO buyervo = (BuyerVO) session.getAttribute("userSession"); 
		
		cartVO.setCart_buyerNum(buyervo.getBuyer_num());
		
		ArrayList<CartVO> cart_list = greenrecipeService.cart_get(cartVO);
											
		
		model.addAttribute("cart_list" ,cart_list);		
		//--------------------------------------------------------------
		
		
		//인스타 d i v 이미지 출력용
		ArrayList<ItemVO> item_list = greenrecipeService.getAllItem(itemVO);
		
		model.addAttribute("item_list" , item_list);
		
		
		
		//---------------------------------------------------------------
	
		ArrayList<IR_VO> IR_list = greenrecipeService.cart_item2(ir_VO);
			
		model.addAttribute("IR_list" ,IR_list);			
				
		return "shopping_cart";								
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// buyer_num 세션 값에 cart buyer_num을 조건 걸어서 cart테이블 값 출력
	@RequestMapping("/cart_get")
	public String cart_get(Model model, HttpSession session,
			@ModelAttribute("cartVO") CartVO cartVO
			) throws Exception { 
		
		BuyerVO buyervo = (BuyerVO) session.getAttribute("userSession"); 
		
		cartVO.setCart_buyerNum(buyervo.getBuyer_num());	
		
		ArrayList<CartVO> IR_list = greenrecipeService.cart_get(cartVO);
		
		model.addAttribute("IR_list" ,IR_list);			
		
		return "sub/cart_get";								
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// cart , item 조인   >>  item_num 을 조건으로 값 출력
	@RequestMapping(value = "/cart_itemNum")
	public String cart_itemNum(Model model,
			@ModelAttribute("ir_VO") IR_VO ir_VO)
	throws Exception {

		ArrayList<IR_VO> IR_list = greenrecipeService.cart_itemNum(ir_VO);
	
		model.addAttribute("IR_list", IR_list);
		
		return "sub/cart_itemNum";
	}
	
	
	
	
	
	
	
	
	// 장바구니 삭제_IR
	@RequestMapping("/IR_deleteCart")
	public String IR_deleteCart(@ModelAttribute("ir_VO") IR_VO ir_VO,
			Model model) throws Exception {
		
		greenrecipeService.IR_deleteCart(ir_VO); 
		
		return "redirect:/cart_deleteForm";
		   
	}
	
	
	@RequestMapping("/cart_deleteForm")
	public String cart_deleteForm(Model model, HttpSession session)
			throws Exception { 
		
		session.getAttribute("userSession"); 		
		
		return "cart_deleteForm";
	}
	
	
	
	
	
	

	
	
	//test    ,   적용은 안함
	@RequestMapping(value = "/insertCart")
	public String insertCart(@ModelAttribute("cartVO") CartVO cartVO, Model model)
			throws Exception {
			
	
			  
			  greenrecipeService.insertCart(cartVO);
			 
			
			return "cart_insertForm";
			
		}
	
	
	
	

	
	
	
	

	
	
	
	
	//--------------------------------- CS -------------------------------------------------
	
	
	
	
	
	
}
