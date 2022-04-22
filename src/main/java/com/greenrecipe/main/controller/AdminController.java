package com.greenrecipe.main.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greenrecipe.main.service.GreenRecipeService;
import com.greenrecipe.main.vo.BuyerVO;
import com.greenrecipe.main.vo.HelpVO;
import com.greenrecipe.main.vo.ItemVO;
import com.greenrecipe.main.vo.ManagerVO;
import com.greenrecipe.main.vo.PayVO;
import com.greenrecipe.main.vo.RecipeVO;
import com.greenrecipe.main.vo.ReviewVO;
import com.greenrecipe.main.vo.SellerVO;

@Controller
public class AdminController {

	
	@Resource(name = "greenrecipeService") 
	private GreenRecipeService greenrecipeService; 
	
	
	
	
	


	
	
	@RequestMapping("/admin_help")
	public String help_admin(@ModelAttribute("helpVO") HelpVO helpVO, Model model,
			@ModelAttribute("buyerVO") BuyerVO buyerVO,
			HttpSession session,
			@RequestParam(value = "num", required = false, defaultValue = "1") int num)
	throws Exception {
	
		ManagerVO admin1 = (ManagerVO) session.getAttribute("managerSession");
		
		buyerVO.setBuyer_num(admin1.getManager_num());
		
		BuyerVO admin = greenrecipeService.getBuyerNum(buyerVO); 
		
		model.addAttribute("adminlist",admin);
		
		
	
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
		
	
		return "admin_help";
	}
	
	
	

	@RequestMapping("/admin_helpContentView")
	public String helpContentView_admin(@RequestParam int help_num, Model model,
			@ModelAttribute("buyerVO") BuyerVO buyerVO,
			HttpSession session) {
		
		ManagerVO admin1 = (ManagerVO) session.getAttribute("managerSession");
		
		buyerVO.setBuyer_num(admin1.getManager_num());
		
		BuyerVO admin = greenrecipeService.getBuyerNum(buyerVO); 
		
		model.addAttribute("adminlist",admin);
		
		
		
		model.addAttribute("personalData", greenrecipeService.helpContentView(help_num));
		
		return "admin_helpContentView";
	}
	
	
	
	
	@RequestMapping("/admin_helpModifyForm")
	public String helpModifyForm(@RequestParam int help_num, Model model,
			@ModelAttribute("buyerVO") BuyerVO buyerVO,
			@ModelAttribute("helpVO") HelpVO helpVO,
			HttpSession session)
	throws Exception {
		
		ManagerVO admin1 = (ManagerVO) session.getAttribute("managerSession");
		
		buyerVO.setBuyer_num(admin1.getManager_num());
		
		BuyerVO admin = greenrecipeService.getBuyerNum(buyerVO); 
		
		model.addAttribute("adminlist",admin);
		
		
		
		model.addAttribute("personalData", greenrecipeService.helpContentView(help_num));
		return "admin_helpModifyForm";
	}
	
	
	
	@RequestMapping("/admin_deleteHelp")
	public String HelpDelete_admin(@ModelAttribute("helpVO") HelpVO helpVO,
			Model model) throws Exception {
		
		
		
		greenrecipeService.deleteHelp2(helpVO); 
		
		return "redirect:/admin_help"; 
		   
	}
	
	
	
	@RequestMapping("/admin_updateHelp")
	public String HelpUpdate_admin(@ModelAttribute("helpVO") HelpVO helpVO,
			Model model) throws Exception {
		
		greenrecipeService.updateHelp2(helpVO); 
		
		return "redirect:/admin_help"; 
		   
	}
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("/updateBuyer_admin")
	public String BuyerUpdate_admin(@ModelAttribute("buyerVO") BuyerVO buyerVO,
			Model model) throws Exception {
		
		greenrecipeService.updateBuyer(buyerVO); 
		
		return "redirect:/admin_buyer"; 
		   
	}
	
	
	@RequestMapping("/deleteBuyer_admin")
	public String BuyerDelete_admin(@ModelAttribute("buyerVO") BuyerVO buyerVO,
			Model model) throws Exception {
		
		greenrecipeService.deleteBuyer(buyerVO); 
		
		return "redirect:/admin_buyer";
		   
	}

	
	@RequestMapping(value = "/admin")
	public String admin(Model model, HttpSession session,
			@ModelAttribute("itemVO") ItemVO itemVO, 
			@ModelAttribute("recipeVO") RecipeVO recipeVO,
			@ModelAttribute("buyerVO") BuyerVO buyerVO,
			@ModelAttribute("payVO") PayVO payVO,
			@ModelAttribute("sellerVO") SellerVO sellerVO,
			@ModelAttribute("managerVO") ManagerVO managerVO)
					throws Exception {
		
		ManagerVO admin1 = (ManagerVO) session.getAttribute("managerSession");
		
		buyerVO.setBuyer_num(admin1.getManager_num());
		
		BuyerVO admin = greenrecipeService.getBuyerNum(buyerVO); 
		
		model.addAttribute("adminlist",admin);
		
		
		ArrayList<PayVO> paylist = greenrecipeService.payAll(payVO);
		model.addAttribute("paylist" ,paylist);
		
		

		int count = greenrecipeService.accessCount();
		
		model.addAttribute("count" ,count);
	
			

		
		return "admin";
	}
	
	
	
	
	
	
	@RequestMapping(value = "/admin_buyer")
	public String admin_buyer(Model model, HttpSession session,
			@ModelAttribute("itemVO") ItemVO itemVO, 
			@ModelAttribute("recipeVO") RecipeVO recipeVO,
			@ModelAttribute("buyerVO") BuyerVO buyerVO,
			@ModelAttribute("managerVO") ManagerVO managerVO)
					throws Exception {
		
		ManagerVO admin1 = (ManagerVO) session.getAttribute("managerSession");
		
		buyerVO.setBuyer_num(admin1.getManager_num());
		
		BuyerVO admin = greenrecipeService.getBuyerNum(buyerVO); 
		
		model.addAttribute("adminlist",admin);
		
		
		
		ArrayList<BuyerVO> buyerlist = greenrecipeService.getAllBuyer(buyerVO);
		model.addAttribute("buyerlist" ,buyerlist);
			

		
		return "admin_buyer";
	}
	
	
	
	
	
	

	
	@RequestMapping(value = "/admin_seller")
	public String admin_seller(Model model, HttpSession session,
			@ModelAttribute("sellerVO") SellerVO sellerVO, 
			@ModelAttribute("buyerVO") BuyerVO buyerVO,
			@ModelAttribute("managerVO") ManagerVO managerVO)
					throws Exception {
		
		ManagerVO admin1 = (ManagerVO) session.getAttribute("managerSession");
		
		buyerVO.setBuyer_num(admin1.getManager_num());
		
		BuyerVO admin = greenrecipeService.getBuyerNum(buyerVO); 
		
		model.addAttribute("adminlist",admin);
		
		
		
		ArrayList<SellerVO> sellerlist = greenrecipeService.sellerAll(sellerVO);
		model.addAttribute("sellerlist" ,sellerlist);
			

		
		return "admin_seller";
	}
	
	
	

	
	
	
	


	@RequestMapping("/manager_login")
	public String manager_loginForm(Model model, HttpSession session)
			 { 

		
		session.invalidate();
		
		return "manager_login";
	}
	
	//session.setAttribute("managerSession", managerSession);
	
	
	

	
	
	@RequestMapping(value = "/manager_loginCheck")
	public String manager_loginCheck(@ModelAttribute("managerVO") ManagerVO managerVO,
			Model model, HttpSession session) {

		ManagerVO managerSession = greenrecipeService.manager_loginCheck(managerVO);

		String divi = managerSession.getManager_code();

		model.addAttribute("managerSession", managerSession);

		session.setAttribute("managerSession", managerSession);
		
		session.setMaxInactiveInterval(60*60); // 세션 시간 60분으로 설정
		
		

		if (divi.equals("0415")) {
			return "redirect:/admin";
		  }
		
		else if (!divi.equals("0415")) {
			return "redirect:/login";
		}
	
		else   {
		
			return "redirect:/login";
			
		  }
	
	}
	
	

	@RequestMapping("/admin_getBuyerinfo")
	public String getBuyerinfo_admin(@ModelAttribute("buyerVO") BuyerVO buyerVO,
			HttpSession session,
			Model model) throws Exception {
		
		
		
		BuyerVO buyer= greenrecipeService.getBuyerinfoId(buyerVO);

		  model.addAttribute("buyer", buyer);
		  
		
		return "admin_getBuyerinfo";
	}
	
	
	
	@RequestMapping("/admin_sellerModifyForm")
	public String admin_sellerModifyForm(@ModelAttribute("sellerVO") SellerVO sellerVO,
			HttpSession session,
			Model model) throws Exception {
		
		
		
		SellerVO seller = greenrecipeService.getSellerNum(sellerVO);

		  model.addAttribute("seller", seller);
		  
		
		return "admin_sellerModifyForm";
	}
	
	
	
	
	
	
	@RequestMapping("/admin_sellerAccess")
	public String admin_sellerAccess(@ModelAttribute("sellerVO") SellerVO sellerVO,
			Model model) throws Exception {
		
		SellerVO seller = greenrecipeService.getSellerNum(sellerVO);

		  model.addAttribute("seller", seller);
		

		return "admin_sellerAccess";
	}
	
	
	
	
	
	
	
	@RequestMapping(value = "/manager")
	public String manager(Model model, HttpSession session,
			@ModelAttribute("itemVO") ItemVO itemVO, @ModelAttribute("recipeVO") RecipeVO recipeVO,
			@ModelAttribute("buyerVO") BuyerVO buyerVO)
					throws Exception {
		
		
		
		ArrayList<ItemVO> itemlist = greenrecipeService.getAllItem(itemVO);
		model.addAttribute("itemlist" ,itemlist);
		
		
		ArrayList<RecipeVO> recipelist = greenrecipeService.getAllRecipe(recipeVO);
		model.addAttribute("recipelist" ,recipelist);
		
		ArrayList<BuyerVO> buyerlist = greenrecipeService.getAllBuyer(buyerVO);
		model.addAttribute("buyerlist" ,buyerlist);
			

		
		return "sub/manager";
	}
	
	

	@RequestMapping(value = "/seller_item")
	public String admin_item(Model model, HttpSession session,
			@ModelAttribute("itemVO") ItemVO itemVO, @ModelAttribute("recipeVO") RecipeVO recipeVO,
			@ModelAttribute("buyerVO") BuyerVO buyerVO)
					throws Exception {
		
SellerVO seller1 = (SellerVO) session.getAttribute("sellerSession");
		
		model.addAttribute("seller",seller1);	
	
		ArrayList<ItemVO> itemlist = greenrecipeService.getAllItem(itemVO);
		model.addAttribute("itemlist" ,itemlist);
		
	

		
		return "seller_item";
	}
	
	

	@RequestMapping(value = "/seller_recipe")
	public String seller_recipe(Model model, HttpSession session,
			@ModelAttribute("itemVO") ItemVO itemVO, @ModelAttribute("recipeVO") RecipeVO recipeVO,
			@ModelAttribute("buyerVO") BuyerVO buyerVO)
					throws Exception {
		
		
		SellerVO seller1 = (SellerVO) session.getAttribute("sellerSession");
		
		model.addAttribute("seller",seller1);	
		
		
		ArrayList<RecipeVO> recipelist = greenrecipeService.getAllRecipe(recipeVO);
		model.addAttribute("recipelist" ,recipelist);
		
	

		
		return "seller_recipe";
	}
	
	

	@RequestMapping(value = "/admin_review")
	public String admin_review(Model model, HttpSession session,
			@ModelAttribute("itemVO") ItemVO itemVO, @ModelAttribute("reviewVO") ReviewVO reviewVO,
			@ModelAttribute("buyerVO") BuyerVO buyerVO,
			HttpServletRequest request
			)
					throws Exception {
		
		
		ManagerVO admin1 = (ManagerVO) session.getAttribute("managerSession");
		
		buyerVO.setBuyer_num(admin1.getManager_num());
		
		BuyerVO admin = greenrecipeService.getBuyerNum(buyerVO); 
		
		model.addAttribute("adminlist",admin);
		
		int buyerNum = Integer.parseInt(request.getParameter("buyerNum"));
		
		ArrayList<ReviewVO> reviewlist = greenrecipeService.reviewList(buyerNum);
		model.addAttribute("reviewlist" ,reviewlist);
		
	

		
		return "admin_review";
	}
	
	
	
	

	
	@RequestMapping("/updateSeller2")
	public String SellerUpdate2(HttpSession session,
			@ModelAttribute("sellerVO") SellerVO sellerVO,
			Model model) throws Exception {
		
		greenrecipeService.updateSeller(sellerVO); 
		
		return "redirect:/admin_seller"; 
		   
	}
	
	@RequestMapping("/updateAccess")
	public String updateAccess(HttpSession session,
			@ModelAttribute("sellerVO") SellerVO sellerVO,
			HttpServletRequest request,
			Model model) throws Exception {
		
		int acc = Integer.parseInt(request.getParameter("seller_access"));
		
		sellerVO.setSeller_access(acc);
	
		
		greenrecipeService.updateAccess(sellerVO); 
		
		return "redirect:/admin_seller"; 
		   
	}

	
	
	@RequestMapping("/deleteSeller2")
	public String SellerDelete2(@ModelAttribute("sellerVO") SellerVO sellerVO,
			Model model) throws Exception {
		
	
		
		greenrecipeService.deleteSeller(sellerVO); 
		
		return "redirect:/admin_seller";
		   
	}

	
	
	
	
	
	
	
	
	

	@GetMapping("/event")
	public String event()
			throws Exception { 

		return "sub/event";
	}
	
	
	

	@GetMapping("/event_pop")
	public String event_pop()
			throws Exception { 

		return "sub/event_pop";
	}
	
	
	
}
