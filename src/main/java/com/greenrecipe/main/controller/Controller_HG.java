package com.greenrecipe.main.controller;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.greenrecipe.main.service.GreenRecipeService;
import com.greenrecipe.main.vo.BuyerVO;
import com.greenrecipe.main.vo.CateVO;
import com.greenrecipe.main.vo.CouponVO;
import com.greenrecipe.main.vo.IR_VO;
import com.greenrecipe.main.vo.InquiryVO;
import com.greenrecipe.main.vo.ItemLikeVO;
import com.greenrecipe.main.vo.ItemVO;
import com.greenrecipe.main.vo.PayVO;
import com.greenrecipe.main.vo.RecipeVO;
import com.greenrecipe.main.vo.ReviewVO;

@Controller
public class Controller_HG {

	private static final Logger logger = LoggerFactory.getLogger(Controller_HG.class);
	
	@Resource(name = "greenrecipeService") 
	private GreenRecipeService greenrecipeService; 

	
	
	
	@RequestMapping("/")
	public String main2() { // 메소드정의문 3형식

		return "redirect:/mainpage";
	}

	
	

	@RequestMapping(value = "/reviewWritePlace", method = RequestMethod.GET)
	public String reviewWritePlace(Model model, HttpServletRequest request) throws Exception { // 문의 폼

		int itemNum = Integer.parseInt(request.getParameter("itemNum"));
		ItemVO itemvo = greenrecipeService.itemLikeInfo(itemNum);

		model.addAttribute("item", itemvo);

		return "reviewWriteForm";
	}

	@RequestMapping(value = "/reviewWrite", method = RequestMethod.POST)
	public String reviewWrite(@RequestParam MultipartFile file, RedirectAttributes redirectAttributes,
			@ModelAttribute("reviewVO") ReviewVO reviewVO, HttpServletRequest request,HttpSession session)
			throws IllegalStateException, IOException { // 문의 작성 성공 메

		BuyerVO buyervo = (BuyerVO) session.getAttribute("userSession"); 

		//"resources\\static\\img"
		String uploadPath = request.getSession().getServletContext().getRealPath("/");
		int index = uploadPath.indexOf("webapp");
		String uploadPathSubstring = uploadPath.substring(0, index) + "resources\\static\\img";

		System.out.println("경로:" + uploadPath);

		reviewVO.setReview_buyerNum(buyervo.getBuyer_num());

		logger.info("fileUpload={}", file);
	//	String uuid = UUID.randomUUID().toString();
		//System.out.println(uuid);
		// file upload to system
		File converFile = new File(uploadPathSubstring, file.getOriginalFilename());
		System.out.println("uploadPathSubstring: " + uploadPathSubstring);
		logger.info("fileUpload converFile={}", converFile);

		file.transferTo(converFile);

	//	System.out.println(uuid + file.getOriginalFilename());
		String msg = file.getOriginalFilename() + " is saved in server db";
		redirectAttributes.addFlashAttribute("msg", msg);

		reviewVO.setReview_image(file.getOriginalFilename());

		greenrecipeService.insertReview(reviewVO);
		// memberService.insertMenu(menuVO);
		/*
		 * private int review_num; private int review_buyerNum; private int
		 * review_itemNum ; private String review_content; private String review_image;
		 * private int review_star; private int review_reco; 0 private Date review_date;
		 * sysdate
		 */

		return "redirect:/mypage";
	}

	
	@RequestMapping("/mainpage")
	public String main(Model model,
			@ModelAttribute("ir_VO") IR_VO ir_VO,
			@ModelAttribute("recipeVO") RecipeVO recipeVO
			) throws Exception {

		ArrayList<RecipeVO> recipelist = greenrecipeService.getAllRecipe(recipeVO);
		
		model.addAttribute("recipelist" ,recipelist);
		
		
		ArrayList<IR_VO> IR_list = greenrecipeService.IR_all(ir_VO);
		
		model.addAttribute("IR_list", IR_list);
		
		ArrayList<ItemVO> bestlist = greenrecipeService.itemBestList();
		model.addAttribute("bestlist", bestlist);
		
		ArrayList<ItemVO> salelist = greenrecipeService.itemSaleList();
		model.addAttribute("salelist", salelist);

		
		return "mainpage";
	}

	
	
	
	
	
	
	
	@RequestMapping("/mypage")
	public String mypage(@ModelAttribute("BuyerVO") BuyerVO buyerVO,
			@ModelAttribute("ItemLikeVO") ItemLikeVO itemLikeVO, 
			@ModelAttribute("ItemVO") ItemVO itemVO,
			@ModelAttribute("likeItem") ArrayList<ItemVO> likeItem, 
			@ModelAttribute("RecipeVO") RecipeVO recipeVO,
			Model model,
			@ModelAttribute("likeRecipe") ArrayList<RecipeVO> likeRecipe,
			@ModelAttribute("reviewList") ArrayList<ReviewVO> reviewList,
			@ModelAttribute("payList") ArrayList<PayVO> payList, HttpSession session) throws Exception { // 메소드정의문 3형식
		
		
		
			
		
		BuyerVO buyervo = (BuyerVO) session.getAttribute("userSession"); 
		
		buyerVO.setBuyer_num(buyervo.getBuyer_num());
		
		BuyerVO userSession = greenrecipeService.getBuyerInfo(buyerVO);
	
		model.addAttribute("userInfo", userSession);

		System.out.println("마이페이지이동");

		
		
		
		
		
		// 찜 상품 출력
		itemLikeVO.setItemLike_buyerNum(userSession.getBuyer_num());
		
		
		ArrayList<ItemLikeVO> likelist = greenrecipeService.itemLikeNum(itemLikeVO);
	

		for (ItemLikeVO a : likelist) {
	

			itemVO = greenrecipeService.itemLikeInfo(a.getItemLike_itemNum());
		
			
			likeItem.add(itemVO);
			
		}
		model.addAttribute("LikeItem", likeItem);

		// 찜레시피 출력
		ArrayList<ItemLikeVO> likelist2 = greenrecipeService.recipeLikeNum(itemLikeVO);

		for (ItemLikeVO a : likelist2) {
			recipeVO = greenrecipeService.RecipeLikeInfo(a.getItemLike_itemNum());

			likeRecipe.add(recipeVO);
		}

		model.addAttribute("LikeRecipe", likeRecipe);

		
		
		
		
		
		// 결제내역 출력
		payList = greenrecipeService.payList(userSession.getBuyer_num());
	
		
		model.addAttribute("payList", payList);
	
		
		
		ArrayList<ArrayList<ItemVO>> itemVOList = new ArrayList<ArrayList<ItemVO>>();
	
		
		
		for (int i = 0; i < payList.size(); i++) {
	
			ArrayList<ItemVO> itemVOList1 = new ArrayList<ItemVO>();
		

			//String[] array = payList.get(i).getPay_itemNum().split(",");
			String[] array = payList.get(i).getPay_itemNum().replace("[", "").replace("]", "").replace(" ","").split(",");
			

			
			for (int j = 0; j < array.length; j++) {
			
				ItemVO itemvo1 = greenrecipeService.itemLikeInfo(Integer.parseInt(array[j]));
		
				
				System.out.println(itemvo1.getItem_name());
			
				
				itemVOList1.add(itemvo1);
				
			

			}
			System.out.println("j번째 :" + itemVOList1.size());
		
			
			itemVOList.add(itemVOList1);

		}
		System.out.println("총사이즈" + itemVOList.size());
		model.addAttribute("payDetail", itemVOList);

		// 후기 출력
		reviewList = greenrecipeService.reviewList(userSession.getBuyer_num());

		model.addAttribute("ReviewList", reviewList);

		// 문의 출력
		ArrayList<InquiryVO> inquiryList = greenrecipeService.inquiryList(userSession.getBuyer_num());

		model.addAttribute("inquiryList", inquiryList);
		System.out.println(inquiryList.size());

		// 쿠폰 출력

		ArrayList<CouponVO> couponList = greenrecipeService.buyerCouponList(userSession.getBuyer_num());

		model.addAttribute("couponList", couponList);

		return "myPage";
	}

	
	
	
	@RequestMapping(value = "/deleteItemLike", method = RequestMethod.GET) // 상품 찜 삭제하기
	public String deleteItemLike(Model model, HttpServletRequest request) { // 메소드정의문 3형식

		int itemNum = Integer.parseInt(request.getParameter("itemNum"));

		greenrecipeService.deleteItemLike(itemNum);

		return "redirect:/mypage";
	}

	
	
	
	@RequestMapping(value = "/deleteRecipeLike", method = RequestMethod.GET) // 상품 찜 삭제하기
	public String deleteRecipeLike(Model model, HttpServletRequest request) { // 메소드정의문 3형식

		int recipeNum = Integer.parseInt(request.getParameter("recipeNum"));

		greenrecipeService.deleteRecipeLike(recipeNum);

		return "redirect:/mypage";
	}

	
	
	
	@RequestMapping(value = "/deleteReview", method = RequestMethod.GET) // 상품 찜 삭제하기
	public String deleteReview(Model model, HttpServletRequest request) { // 메소드정의문 3형식

		int reviewNum = Integer.parseInt(request.getParameter("reviewNum"));

		greenrecipeService.deleteReview(reviewNum);

		System.out.println(5);
		return "redirect:/mypage";
	}

	
	
	@RequestMapping(value = "/cate", method = RequestMethod.GET)
	public String catepage(Model model, HttpServletRequest request) { // 메소드정의문 3형식

		int cateNum = Integer.parseInt(request.getParameter("cateNum"));

		ArrayList<ItemVO> catelist = greenrecipeService.itemCateList(cateNum);

		CateVO cateName = greenrecipeService.cateInfo(cateNum);

		model.addAttribute("catelist", catelist);

		model.addAttribute("cateName", cateName.getCate_name());
		
		return "cateListPage";
	}

	
	
	@RequestMapping("/best")
	public String bestpage(Model model) { // 메소드정의문 3형식

		ArrayList<ItemVO> bestlist = greenrecipeService.itemBestList();
		model.addAttribute("bestlist", bestlist);

		return "bestListPage";
	}

	
	
	@RequestMapping("/new")
	public String newpage(Model model) { // 메소드정의문 3형식

		ArrayList<ItemVO> newlist = greenrecipeService.itemNewList();
		model.addAttribute("newlist", newlist);

		return "newListPage";
	}

	
	
	@RequestMapping("/sale")
	public String salepage(Model model) { // 메소드정의문 3형식

		ArrayList<ItemVO> salelist = greenrecipeService.itemSaleList();
		model.addAttribute("salelist", salelist);

		return "saleListPage";
	}

	
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String searchpage(Model model, HttpServletRequest request) { // 메소드정의문 3형식

		String keyword = request.getParameter("keyword");

		ArrayList<ItemVO> searchlist = greenrecipeService.itemSearchList(keyword);

		if (searchlist.size() == 0) {
			return "noSearchPage";
		} else {
			model.addAttribute("searchlist", searchlist);
			System.out.println(searchlist.size());
			return "searchPage";
		}

	}
}
