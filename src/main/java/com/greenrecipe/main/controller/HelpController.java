package com.greenrecipe.main.controller;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.greenrecipe.main.service.GreenRecipeService;
import com.greenrecipe.main.vo.BuyerVO;
import com.greenrecipe.main.vo.HelpVO;

@Controller
public class HelpController {
	
	@Resource(name = "greenrecipeService") 
	private GreenRecipeService greenrecipeService;
	
	
	@RequestMapping("/help")
	public String help(@ModelAttribute("helpVO") HelpVO helpVO, Model model,
			@ModelAttribute("buyerVO") BuyerVO buyerVO,
			HttpSession session,
			@RequestParam(value = "num", required = false, defaultValue = "1") int num)
	throws Exception {
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
		
	
		return "help";
	}
	
	
	
	
	@RequestMapping("/helpWriteForm")
	public String helpWriteForm(@ModelAttribute("buyerVO") BuyerVO buyerVO, 
			Model model,
			@ModelAttribute("helpVO") HelpVO helpVO, 
			HttpSession session) {
		
		BuyerVO buyervo = (BuyerVO) session.getAttribute("userSession"); 
		
		
		
		helpVO.setHelp_buyerId(buyervo.getBuyer_id());
		
		
		model.addAttribute("buyer", helpVO);
		
		return "helpWriteForm";
	}
	
	
	
	@RequestMapping(value = "/insertHelp2")
	public String HelpInsert2(Model model,
			@ModelAttribute("helpVO") HelpVO helpVO )
		throws Exception {
		greenrecipeService.insertHelp2(helpVO);
		
		return "redirect:/help";
	}
	
	
	@RequestMapping(value = "/insertHelp")
	public void HelpInsert(MultipartHttpServletRequest mul, HttpServletResponse response, HttpServletRequest request) throws Exception {
		String message = greenrecipeService.insertHelp(mul, request);
		PrintWriter out = null;
		response.setContentType("text/html; charset=UTF-8");
		out = response.getWriter();
		out.println(message);
	}
	
	@RequestMapping("/helpContentView")
	public String helpContentView(@RequestParam int help_num, Model model,
			@ModelAttribute("helpVO") HelpVO helpVO, 
			HttpSession session) {
		
		
		
		model.addAttribute("personalData", greenrecipeService.helpContentView(help_num));
		
		
		helpVO = greenrecipeService.helpContentView(help_num);
		
		helpVO.getHelp_buyerId();
		
		model.addAttribute("Help_buyerId", helpVO);
		
		
		return "helpContentView";
	}
	
	
	@RequestMapping("/helpModifyForm")
	public String helpModifyForm(@RequestParam int help_num, Model model)
	throws Exception {
		
		model.addAttribute("personalData", greenrecipeService.helpContentView(help_num));
		return "helpModifyForm";
	}

	
	
	@RequestMapping("/helpBuyer2")
	public String helpBuyer2(@ModelAttribute("buyerVO") BuyerVO buyerVO,
			@ModelAttribute("helpVO") HelpVO helpVO, 
			Model model) throws Exception {
		
		
		HelpVO help2= greenrecipeService.helpBuyer2(helpVO);
	
		model.addAttribute("help", help2);
		  
		
		return "helpModifyForm";
	}
	
	
	
	
	
	@RequestMapping("/updateHelp2")
	public String updateHelp3(@ModelAttribute("helpVO") HelpVO helpVO,
			Model model) throws Exception {
		
		greenrecipeService.updateHelp2(helpVO); 
		
		return "redirect:/help"; 
		   
	}

	
	
	@RequestMapping("/updateHelp")
	public void HelpUpdate(MultipartHttpServletRequest mul, HttpServletResponse response, HttpServletRequest request) throws Exception {
		String message = greenrecipeService.updateHelp(mul, request);
		PrintWriter out = null;
		response.setContentType("text/html; charset=UTF-8");
		out = response.getWriter();
		out.println(message);
	}
	
	@RequestMapping("/deleteHelp")
	public void HelpDelete(@RequestParam("help_num") int help_num, HttpServletResponse response, HttpServletRequest request) throws Exception {
		String message = greenrecipeService.deleteHelp(help_num, request);
		PrintWriter out = null;
		response.setContentType("text/html; charset=UTF-8");
		out = response.getWriter();
		out.println(message);
	}
	
}