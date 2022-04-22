package com.greenrecipe.main.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.greenrecipe.main.service.GreenRecipeService;
import com.greenrecipe.main.vo.BuyerVO;
import com.greenrecipe.main.vo.CartVO;


@Controller
public class BuyerController {
	
	@Resource(name = "greenrecipeService") 
	private GreenRecipeService greenrecipeService; 


	
	
	
	
	
	
	 
	//--------------------------------- CS -------------------------------------------------
	

	
	
	
	
	
	@RequestMapping("/signup")
	public String signup(@ModelAttribute("buyerVO") BuyerVO buyerVO, Model model,
			HttpSession session)
			throws Exception { 

		session.invalidate();
		
		return "signup";
	}
	
	
	

	@RequestMapping("/login")
	public String login(Model model, HttpSession session)
			throws Exception { 

		session.setAttribute("userSession", null);
		
		return "login";
	}
	
	
	
	
	
	@RequestMapping("/historyBack")
	public String historyBack()
			throws Exception { 


		
		return "sub/historyBack";
	}

	
	
	

	

	


	
	
	@RequestMapping("/getBuyerinfoId")
	public String BuyerGetinfoId(@ModelAttribute("buyerVO") BuyerVO buyerVO,
			HttpSession session,
			Model model) throws Exception {
		
		BuyerVO buyervo = (BuyerVO) session.getAttribute("userSession");
		buyerVO.setBuyer_num(buyervo.getBuyer_num());
		BuyerVO buyer= greenrecipeService.getBuyerNum(buyerVO);
		model.addAttribute("buyer", buyer);
		  
		
		return "getBuyerinfoId";
	}
	
	
	
	
	
	
	
	
	


	
	// 매니저는 else if 매니저에서 redirect:/ 다른페이지로 넘어가서
	// 넘어간 페이지에서 session을 다르게("managerSession") 선언하여 관리자페이지로 이동한다
	// 관리자페이지에서는 session.getAttribute("managerSession", manager) 선언을 하여
	// 세션 없이는 들어오지 못하도록 페이지마다 세션 설정을 한다.
	@RequestMapping(value = "/loginCheck")
	public String loginCheck(@ModelAttribute("buyerVO") BuyerVO buyerVO,
			Model model, HttpSession session) {

		BuyerVO userSession = greenrecipeService.loginCheck(buyerVO);

		String divi = userSession.getBuyer_id();

		model.addAttribute("buyer", userSession);

		session.setAttribute("userSession", userSession);
		
		session.setMaxInactiveInterval(60*60); // 세션 시간 60분으로 설정

		
		if (divi.equals("manager")) {
		
			
			return "redirect:/manager_login";
		  }
		
		else if (!divi.equals("manager")) {
	
			
			
			return "redirect:/mainpage";
		}
	
		else   {
		
			return "redirect:/login";
			
		  }
	
	}
	
	
	
	
	
	
	
	@RequestMapping(value = "/logoutProcess")
	public String logoutProcess(HttpSession session) {

		
		session.invalidate();
		

		
		return "redirect:/login";
	}

	
	
	

	

	@RequestMapping(value = "/buyerInsert")
	public String buyerInsert(@ModelAttribute("buyerVO") BuyerVO buyerVO, Model model)
			throws Exception {
			
		
		
			  BuyerVO buyer = greenrecipeService.loginCheck(buyerVO);
			  
			  model.addAttribute("buyer", buyer);
			  
			  greenrecipeService.insertBuyer(buyerVO);
			 
			
			return "login";
		}
	
	
	
	

	
	
	
	
	@RequestMapping("/updateBuyer")
	public String BuyerUpdate(@ModelAttribute("buyerVO") BuyerVO buyerVO,
			Model model) throws Exception {
		
		greenrecipeService.updateBuyer(buyerVO); 
		
		return "redirect:/mypage"; 
		   
	}

	
	
	@RequestMapping("/deleteBuyer")
	public String BuyerDelete(@ModelAttribute("buyerVO") BuyerVO buyerVO,
			Model model) throws Exception {
		
		greenrecipeService.deleteBuyer(buyerVO); 
		
		return "redirect:/mypage";
		   
	}


	
	
	
	

	@RequestMapping("/mypage_buyer")
	public String mypage_buyer(Model model, HttpSession session,
			@ModelAttribute("cartVO") CartVO cartVO
			) throws Exception { 
														
		BuyerVO buyervo = (BuyerVO) session.getAttribute("userSession"); 
															
		cartVO.setCart_buyerNum(buyervo.getBuyer_num());	
		
		ArrayList<CartVO> list = greenrecipeService.cart_get(cartVO); 
														
		
		model.addAttribute("list" ,list);			
															
		
		return "sub/mypage_buyer";				
	}
	
	

	
	
	
	
	//--------------------------------- CS -------------------------------------------------
	
	
	
	
	
	
	
	
	
	
	
	
	
	
								//YS
	
	
	@RequestMapping(value = "/Idcheck")
	@ResponseBody
    public int idCheck(@RequestParam("id") String buyer_id)
    		throws Exception {
			int cnt = greenrecipeService.idCheck(buyer_id);
			return cnt;
			
    }
	
	@RequestMapping(value = "/Codecheck")
	@ResponseBody
    public int codeCheck(@RequestParam("id") String buyer_recomcode)
    		throws Exception {
			int cnt = greenrecipeService.codeCheck(buyer_recomcode);
			return cnt;
			
    }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
}
