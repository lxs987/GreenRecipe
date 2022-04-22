package com.greenrecipe.main.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greenrecipe.main.service.GreenRecipeService;
import com.greenrecipe.main.vo.BuyerVO;
import com.greenrecipe.main.vo.HelpVO;
import com.greenrecipe.main.vo.InquiryVO;
import com.greenrecipe.main.vo.ManagerVO;
import com.greenrecipe.main.vo.PayVO;
import com.greenrecipe.main.vo.SellerVO;

@Controller
public class Seller_Controller {

	
	@Resource(name = "greenrecipeService") 
	private GreenRecipeService greenrecipeService; 
	
	
	
	
	
	

	@RequestMapping("/seller_login")
	public String seller_loginForm(Model model, HttpSession session)
			 { 

		session.invalidate();
		
		return "seller_login";
	}
	
	
	@RequestMapping("/seller_logout")
	public String seller_logout(Model model, HttpSession session)
			 { 

		session.invalidate();
		
		return "seller_login";
	}
	
	
	
	
	

	
	@RequestMapping(value = "/seller_loginCheck")
	public String seller_loginCheck(@ModelAttribute("sellerVO") SellerVO serllerVO,
			Model model, HttpSession session) {

		SellerVO sellerSession = greenrecipeService.seller_loginCheck(serllerVO);

		String divi = sellerSession.getSeller_id();

		model.addAttribute("sellerSession", sellerSession);

		session.setAttribute("sellerSession", sellerSession);
		
		session.setMaxInactiveInterval(60*60);
		

		if (divi.equals("manager")) {
			return "redirect:/manager_login";
		  }
		
		else if (!divi.equals("manager")) {
			return "redirect:/seller_main";
		}
	
		else   {
		
			return "redirect:/seller_login";
			
		  }
	
	}
	
	
	
	@RequestMapping(value = "/seller_main")
	public String seller_main(Model model, HttpSession session,
			@ModelAttribute("sellerVO") SellerVO serllerVO,
			@ModelAttribute("buyerVO") BuyerVO buyerVO,
			@ModelAttribute("payVO") PayVO payVO,
			@ModelAttribute("managerVO") ManagerVO managerVO)
					throws Exception {
		
		SellerVO seller1 = (SellerVO) session.getAttribute("sellerSession");
		
		model.addAttribute("seller",seller1);	
		
		
		String sellerId = seller1.getSeller_id();
		
		ArrayList<InquiryVO> inquiryList = greenrecipeService.seller_inquiry(sellerId);
		
		model.addAttribute("inquiryList",inquiryList);
		
		
		ArrayList<PayVO> paylist = greenrecipeService.payAll(payVO);
		model.addAttribute("paylist" ,paylist);

		
		
		
		return "seller_main";
	}
	

	
	
	@RequestMapping(value = "/seller_leave")
	public String seller_leave(Model model, HttpSession session,
			@ModelAttribute("sellerVO") SellerVO serllerVO
			)
					throws Exception {
		
		SellerVO seller1 = (SellerVO) session.getAttribute("sellerSession");
		
		model.addAttribute("seller",seller1);	
		
		
		return "seller_leave";
	}
	
	
	
	@RequestMapping(value = "/seller_answer")
	public String seller(Model model, HttpSession session,
			@ModelAttribute("sellerVO") SellerVO sellerVO,
			@ModelAttribute("buyerVO") BuyerVO buyerVO,
			HttpServletRequest request)
					throws Exception {
		
		SellerVO seller1 = (SellerVO) session.getAttribute("sellerSession");
		
		model.addAttribute("seller",seller1);	
		
		
		String sellerId = request.getParameter("sellerId");
		
		ArrayList<InquiryVO> inquirylist = greenrecipeService.seller_inquiry(sellerId);

		model.addAttribute("inquirylist", inquirylist);
			

	
		
		
		
		return "seller_answer";
	}
	
	
	
	@RequestMapping(value = "/seller_answer2")
	public String seller2(Model model, HttpSession session,
			@ModelAttribute("sellerVO") SellerVO sellerVO,
			@ModelAttribute("buyerVO") BuyerVO buyerVO,
			@ModelAttribute("inquiryVO") InquiryVO inquiryVO,
			HttpServletRequest request)
					throws Exception {
		
		SellerVO seller1 = (SellerVO) session.getAttribute("sellerSession");
		
		model.addAttribute("seller",seller1);	
		
		
		int inq = Integer.parseInt(request.getParameter("inquiry_num"));
		
		inquiryVO.setInquiry_num(inq);
		
		InquiryVO inquiry = greenrecipeService.seller_answer(inquiryVO);

		model.addAttribute("inquiry", inquiry);
			

		
	
		
		
		
		return "seller_answer2";
	}
	
	

	
	@RequestMapping(value = "/seller_modifyForm")
	public String seller_modifyForm(Model model, HttpSession session,
			@ModelAttribute("sellerVO") SellerVO sellerVO,
			HttpServletRequest request
			)
					throws Exception {
		
		SellerVO seller1 = (SellerVO) session.getAttribute("sellerSession");
		
		sellerVO.setSeller_num(seller1.getSeller_num());
		
		SellerVO seller= greenrecipeService.getSellerNum(sellerVO);		
		
		model.addAttribute("seller",seller);	
		
		
		
		
		
		return "seller_modifyForm";
	}
	
	
	

	
	
	
	
	
	@RequestMapping("/updateSeller")
	public String SellerUpdate(HttpSession session,
			@ModelAttribute("sellerVO") SellerVO sellerVO,
			Model model) throws Exception {
		
		greenrecipeService.updateSeller(sellerVO); 
		
		return "redirect:/seller_main"; 
		   
	}

	
	
	@RequestMapping("/deleteSeller")
	public String SellerDelete(@ModelAttribute("sellerVO") SellerVO sellerVO,
			Model model) throws Exception {
		
	
		
		greenrecipeService.deleteSeller(sellerVO); 
		
		return "redirect:/seller_login";
		   
	}


	
	@RequestMapping("/seller_help")
	public String help_seller(@ModelAttribute("helpVO") HelpVO helpVO, Model model,
			@ModelAttribute("sellerVO") SellerVO sellerVO,
			HttpSession session,
			@RequestParam(value = "num", required = false, defaultValue = "1") int num)
	throws Exception {
	
		SellerVO seller1 = (SellerVO) session.getAttribute("sellerSession");
		
		sellerVO.setSeller_num(seller1.getSeller_num());
		
		SellerVO seller = greenrecipeService.getSellerNum(sellerVO); 
		
		model.addAttribute("seller",seller);
	

		int pageLetter = 10;
		int allCount = greenrecipeService.helpCount();
		int repeat = allCount / pageLetter;
		if(allCount % pageLetter != 0) {
			repeat += 1;
		}
		int end = num * pageLetter;
		int start = end + 1 - pageLetter;
		model.addAttribute("repeat", repeat);
		ArrayList<HelpVO> helplist = greenrecipeService.helpList(helpVO, start, end);
		model.addAttribute("helplist" , helplist);
		
	
		return "seller_help";
	}
	
	
	

	@RequestMapping("/seller_helpContentView")
	public String helpContentView_seller(@RequestParam int help_num, Model model,
			@ModelAttribute("sellerVO") SellerVO sellerVO,
			HttpSession session) {
		
		SellerVO seller1 = (SellerVO) session.getAttribute("sellerSession");
		
		sellerVO.setSeller_num(seller1.getSeller_num());
		
		SellerVO seller = greenrecipeService.getSellerNum(sellerVO); 
		
		model.addAttribute("seller",seller);
		
		
		
		model.addAttribute("personalData", greenrecipeService.helpContentView(help_num));
		
		return "seller_helpContentView";
	}
	
	
	
	
	
	
}
