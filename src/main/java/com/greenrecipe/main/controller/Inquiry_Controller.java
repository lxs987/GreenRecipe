package com.greenrecipe.main.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.greenrecipe.main.service.GreenRecipeService;
import com.greenrecipe.main.vo.InquiryVO;
import com.greenrecipe.main.vo.SellerVO;

@Controller
public class Inquiry_Controller {

	
	@Resource(name = "greenrecipeService") 
	private GreenRecipeService greenrecipeService; 
	
	
	
	
	
	
	

	@RequestMapping("/inquiryWriteForm")
	public String inquiryWritePlace() {

		return "inquiryWriteForm";
	}

	@RequestMapping("/inquiryWrite")
	public String inquiryWrite() { 

		return "redirect:/mypage";
	}

	
	
	
	
	@RequestMapping("/updateAnswer")
	public String SellerUpdate(HttpSession session,
			@ModelAttribute("inquiryVO") InquiryVO inquiryVO,
			Model model) throws Exception {
	
		greenrecipeService.updateAnswer(inquiryVO);
		
		SellerVO seller1 = (SellerVO) session.getAttribute("sellerSession");
		
		model.addAttribute("seller",seller1);	
		
		String sellerId = seller1.getSeller_id();
		
		
		
		return "redirect:/seller_answer?sellerId="+sellerId; 
		   
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
