package com.greenrecipe.main.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.greenrecipe.main.service.GreenRecipeService;
import com.greenrecipe.main.vo.BuyerVO;
import com.greenrecipe.main.vo.CartVO;
import com.greenrecipe.main.vo.CouponVO;
import com.greenrecipe.main.vo.DynamoItem;
import com.greenrecipe.main.vo.GradeVO;
import com.greenrecipe.main.vo.ItemLikeVO;
import com.greenrecipe.main.vo.ItemVO;
import com.greenrecipe.main.vo.PayVO;
import com.greenrecipe.main.vo.RecipeVO;
import com.greenrecipe.main.vo.ReviewVO;

@Controller
public class Controller_JG {

	@Resource(name = "greenrecipeService") 
	private GreenRecipeService greenrecipeService; 
	
	
	
	
	 

	@RequestMapping("/itemDetail")
	public String itemDetail(@ModelAttribute("BuyerVO") BuyerVO buyerVO,
			@ModelAttribute("GradeVO") GradeVO gradeVO,
			@ModelAttribute("ItemVO") ItemVO itemVO,
			Model model,
			@ModelAttribute("itemReviewList") ArrayList<ReviewVO> itemReviewList,
			HttpSession session) { // 메소드정의문 3형식

		// buyer정보
		BuyerVO buyervo = (BuyerVO) session.getAttribute("userSession"); 

		buyerVO.setBuyer_num(buyervo.getBuyer_num());

		BuyerVO userSession = greenrecipeService.getBuyerInfo(buyerVO);

		model.addAttribute("userInfo", userSession);
		
		// 적립율 나타내기 위해 유저의 등급 

		gradeVO.setGrade_id(buyervo.getBuyer_grade());
		
		GradeVO gradeInfo = greenrecipeService.getGradeInfo(gradeVO);
		
		model.addAttribute("gradeInfo", gradeInfo);
		//${(itemInfo.item_price - itemInfo.item_price*itemInfo.item_per / 100) * (gradeInfo.grade_per/100)} 원 적립</td
		// 아이템 상세정보
		
		//int itemNum = 4; //콤부차
		
		//itemVO.setItem_num(itemNum);
		
		ItemVO itemInfo = greenrecipeService.getItemInfo(itemVO);
		float reward = (itemInfo.getItem_price() - itemInfo.getItem_price()*itemInfo.getItem_per()/100) * gradeInfo.getGrade_per();
		float rewardPoint = reward/100;
		System.out.println(rewardPoint);
		model.addAttribute("itemInfo", itemInfo);
		model.addAttribute("reward", rewardPoint);
		// 각 아이템에 작성된 리뷰
		
		// 해당 상품에 달린 리뷰 갯수
		
		
		int reviewNum = greenrecipeService.itemReviewNumber(itemInfo.getItem_num());
		
		model.addAttribute("reviewNum", reviewNum);
		
		// 리뷰 내용
		
		itemReviewList = greenrecipeService.itemReviewList(itemInfo.getItem_num());

		model.addAttribute("itemReviewList", itemReviewList);
		
		

		return "itemDetail";
	}
	
	
	@RequestMapping(value = "/itemCart", method=RequestMethod.GET)
	public String insertItemCart(@ModelAttribute("CartVO") CartVO cartVO,
			HttpServletRequest request,
			Model model,
			HttpSession session) {
		
		try {
			cartVO.setCart_buyerNum(Integer.parseInt(request.getParameter("cart_buyerNum")));
			cartVO.setCart_itemNum(Integer.parseInt(request.getParameter("cart_itemNum")));
			cartVO.setCart_count(Integer.parseInt(request.getParameter("cart_count")));
			cartVO.setCart_price(Integer.parseInt(request.getParameter("cart_price")));
			
			greenrecipeService.itemCart(cartVO);
			System.out.println("Insert Item Cart Success");
			System.out.println("buyerNum: "+Integer.parseInt(request.getParameter("cart_buyerNum")));
			System.out.println("itemNum: "+Integer.parseInt(request.getParameter("cart_itemNum")));
			System.out.println("itemCount: "+Integer.parseInt(request.getParameter("cart_count")));
			System.out.println("cartPrice: "+request.getParameter("cart_price"));
			
		} catch(Exception e) {
			System.out.println("insert Item Cart Error");
		}
		
		return "redirect:/itemDetail?item_num="+cartVO.getCart_itemNum(); 
		//추후 장바구니 페이지로 수정
		// 혹은 장바구니로 갈건지 쇼핑을 계속할건지 물어보는 팝업 띄우기
	}
	
	@RequestMapping(value = "/itemLikeButton", method=RequestMethod.GET)
	public String itemLikeButton(@ModelAttribute("itemLikeVO") ItemLikeVO itemLikeVO,
			HttpServletRequest request,
			Model model,
			HttpSession session) {
		
		try {
			itemLikeVO.setItemLike_sepe(0);
			itemLikeVO.setItemLike_buyerNum(Integer.parseInt(request.getParameter("itemLike_buyerNum")));
			itemLikeVO.setItemLike_itemNum(Integer.parseInt(request.getParameter("itemLike_itemNum")));
			
			System.out.println(itemLikeVO.getItemLike_sepe());
			System.out.println(itemLikeVO.getItemLike_buyerNum());
			System.out.println(itemLikeVO.getItemLike_itemNum());
			
			greenrecipeService.likeButton(itemLikeVO);
			System.out.println("Item LikeButton Success");
			
		} catch(Exception e) {
			System.out.println("Item LikeButton Error");
			System.out.println(e);
		}
		
		
		
		return "redirect:/itemDetail?item_num="+itemLikeVO.getItemLike_itemNum();
		//추후 장바구니 페이지로 수정
		// 혹은 장바구니로 갈건지 쇼핑을 계속할건지 물어보는 팝업 띄우기
	}

	
	
@RequestMapping(value = "/recipeDetail")
	public String recipeDetail(@ModelAttribute("BuyerVO") BuyerVO buyerVO,
			@ModelAttribute("ItemVO") ItemVO itemVO,
			@ModelAttribute("RecipeVO") RecipeVO recipeVO,
			@ModelAttribute("CartVO") CartVO cartVO,
			HttpServletRequest request,
			Model model,
			HttpSession session) { // 메소드정의문 3형식
		
	
	
		BuyerVO buyervo = (BuyerVO) session.getAttribute("userSession"); 

		buyerVO.setBuyer_num(buyervo.getBuyer_num());

		BuyerVO userSession = greenrecipeService.getBuyerInfo(buyerVO);
	

		buyerVO.setBuyer_num(userSession.getBuyer_num());

		BuyerVO userInfo = greenrecipeService.getBuyerInfo(buyerVO);

		model.addAttribute("userInfo", userInfo);
		
		// 레시피 상세정보
		int recipeNum = recipeVO.getRecipe_num(); //레시피1번
		
		recipeVO.setRecipe_num(recipeNum);
		
		RecipeVO recipeInfo = greenrecipeService.getRecipeInfo(recipeVO);
		
		model.addAttribute("recipeInfo", recipeInfo);
		
		// 아이템 불러오기
		
		ArrayList<ItemVO> itemList = greenrecipeService.recipeItem(recipeNum);
		model.addAttribute("itemList", itemList);
		
		
		int totalPrice = 0;
		
		for (ItemVO item : itemList) {
			totalPrice += item.getItem_price();
		}
		
		model.addAttribute("totalPrice", totalPrice);
		
		return "recipeDetail";
	}
	

	
	



// 레시피 상세페이지에서 장바구니 버튼 눌렀을 때
@RequestMapping(value = "/recipeCart", method = RequestMethod.GET)
public String insertRecipeCart(@ModelAttribute("BuyerVO") BuyerVO buyerVO, 
		@ModelAttribute("ItemVO") ItemVO itemVO,
		@ModelAttribute("RecipeVO") RecipeVO recipeVO, 
		@ModelAttribute("CartVO") CartVO cartVO,
		HttpServletRequest request, Model model, HttpSession session) {
	int recipeNum = 0;
	try {
		// 레시피 상세페이지에서 유저세션, 레시피넘버 불러오기
		int userSession = Integer.parseInt(request.getParameter("user_num"));
		recipeNum = Integer.parseInt(request.getParameter("recipe_num"));
		
		// 불러온 레시피넘버를 갖는 아이템 리스트를 생성
		ArrayList<ItemVO> itemList = greenrecipeService.recipeItem(recipeNum);
		System.out.println("레시피 재료 개수: " + itemList.size());

		for (ItemVO item : itemList) {

			cartVO.setCart_buyerNum(userSession);
			cartVO.setCart_itemNum(item.getItem_num());
			cartVO.setCart_count(1);
			cartVO.setCart_price(item.getItem_price());

			greenrecipeService.itemCart(cartVO);

		}
		
		System.out.println("insert Recipe Cart Success");

	} catch (Exception e) {
		System.out.println("insert Recipe Cart Error");
	}

	
	
	return "redirect:/recipeDetail?recipe_num="+recipeNum;
	// 추후 장바구니 페이지로 수정
	// 혹은 장바구니로 갈건지 쇼핑을 계속할건지 물어보는 팝업 띄우기
}





@RequestMapping(value = "/recipeLikeButton", method=RequestMethod.GET)
public String recipeLikeButton(@ModelAttribute("itemLikeVO") ItemLikeVO itemLikeVO,
		HttpServletRequest request,
		Model model,
		HttpSession session) {
	
	try {
		itemLikeVO.setItemLike_sepe(1);
		itemLikeVO.setItemLike_buyerNum(Integer.parseInt(request.getParameter("itemLike_buyerNum")));
		itemLikeVO.setItemLike_itemNum(Integer.parseInt(request.getParameter("itemLike_itemNum")));
	
		greenrecipeService.likeButton(itemLikeVO);
		System.out.println("Recipe LikeButton Success");
		
	} catch(Exception e) {
		System.out.println("Recipe LikeButton Error");
		System.out.println(e);
	}
	
	
	return "redirect:/recipeDetail?recipe_num="+itemLikeVO.getItemLike_itemNum(); 
	//추후 장바구니 페이지로 수정
	// 혹은 장바구니로 갈건지 쇼핑을 계속할건지 물어보는 팝업 띄우기
}



@RequestMapping(value = "/pay", method = RequestMethod.POST)
public String pay(@ModelAttribute("BuyerVO") BuyerVO buyerVO, @ModelAttribute("ItemVO") ItemVO itemVO,
		@ModelAttribute("cart") CartVO cartVO,
		@ModelAttribute("itemList") ArrayList<ItemVO> itemList,
		@ModelAttribute("cartList") ArrayList<CartVO> cartList,
		@ModelAttribute("buyerCouponList") ArrayList<CouponVO> buyerCouponList, 
		String[] checkbox, HttpServletRequest request,
		Model model, HttpSession session) { // 메소드정의문 3형식

	// buyer정보
	BuyerVO buyervo = (BuyerVO) session.getAttribute("userSession");

	buyerVO.setBuyer_num(buyervo.getBuyer_num());

	BuyerVO userSession = greenrecipeService.getBuyerInfo(buyerVO);

	model.addAttribute("userInfo", userSession);

	///////////////////////////////////////////////////////
	
	int totalPrice = 0;
	
	for(String chk : checkbox) {
		System.out.println("전달받은 cart_id: " + chk);
		
		cartVO.setCart_id(Integer.parseInt(chk));
		CartVO cart = greenrecipeService.getCartinfo(cartVO);
		cartList.add(cart);
		
		itemVO.setItem_num(cart.getCart_itemNum());
		ItemVO item = greenrecipeService.getItemInfo(itemVO);
		itemList.add(item);
		
		totalPrice += cart.getCart_price();
	}
	
	System.out.println(cartList);
	
	model.addAttribute("cartList", cartList);
	model.addAttribute("itemList", itemList);
	model.addAttribute("totalPrice", totalPrice);
	///////////////////////////////////////////////////////


	return "pay";
}

@RequestMapping(value = "/insertPay", method = RequestMethod.GET)
public String insertPay(@ModelAttribute("BuyerVO") BuyerVO buyerVO, @ModelAttribute("ItemVO") ItemVO itemVO,
		@ModelAttribute("CartVO") CartVO cartVO, @ModelAttribute("GradeVO") GradeVO gradeVO,
		@ModelAttribute("PayVO") PayVO payVO, @ModelAttribute("itemList") ArrayList<ItemVO> itemList,
		@ModelAttribute("cartList") ArrayList<CartVO> cartList, String[] cartIdList, HttpServletRequest request,
		RedirectAttributes redirect, // 추가
		Model model, HttpSession session) {

	try {
		// buyer정보 (등급조정에 필요)
//		// buyer정보
		BuyerVO buyervo = (BuyerVO) session.getAttribute("userSession");
		buyerVO.setBuyer_num(buyervo.getBuyer_num());
		BuyerVO userSession = greenrecipeService.getBuyerInfo(buyerVO);
		model.addAttribute("userInfo", userSession);

		// setGrade_name에서 setGrade_id로 변경
		gradeVO.setGrade_id(userSession.getBuyer_grade());
		GradeVO gradeInfo = greenrecipeService.getGradeInfo(gradeVO); // buyer의 현재 등급 정보 불러오기

		int buyerPoint = userSession.getBuyer_point(); // buyer가 소유한 포인트 불러오기

		ArrayList<Integer> itemNumList = new ArrayList<Integer>();
		ArrayList<String> itemNameList = new ArrayList<String>();

		int deliveryNum = (int) (Math.random() * 1000000000); // 10자리 난수 - 운송장번호에 사용
		int totalPrice = 0;

		for (String chk : cartIdList) {
			// System.out.println("전달받은 cart_id: " + chk);

			cartVO.setCart_id(Integer.parseInt(chk));
			CartVO cart = greenrecipeService.getCartinfo(cartVO);
			cartList.add(cart);

			itemVO.setItem_num(cart.getCart_itemNum());
			ItemVO item = greenrecipeService.getItemInfo(itemVO);
			itemList.add(item);

			itemNumList.add(item.getItem_num());
			itemNameList.add(item.getItem_name());

			totalPrice += cart.getCart_count() * item.getItem_price() * (100 - item.getItem_per()) * 0.01;

			item.setItem_stock(item.getItem_stock() - cart.getCart_count()); // 구매한 수량만큼 재고 차감
			item.setItem_selled(item.getItem_selled() + cart.getCart_count()); // 구매한 수량만큼 판매량 증가
			greenrecipeService.updateItemStockSelled(item); // SQL UPDATE문으로 적용

			greenrecipeService.deleteCart(cart); // 장바구니에서 삭제
		}

		payVO.setPay_buyerNum(userSession.getBuyer_num());
		payVO.setPay_itemNum(itemNumList.toString());
		payVO.setPay_itemName(itemNameList.toString());
		payVO.setPay_deliveryNum(deliveryNum);
		payVO.setPay_price(totalPrice);

		greenrecipeService.insertPay(payVO);
		System.out.println("insertPay 완료. 운송장 번호: " + deliveryNum);

		// use_pnt
		int usePoint = Integer.parseInt(request.getParameter("use_pnt")); // 사용한(소멸될)포인트 적용
		System.out.println("결제페이지에서 받아온 사용한 포인트: " + usePoint + "p\n");

		double reward = totalPrice * gradeInfo.getGrade_per() * 0.01; // 등급에 따른 적립율 계산
		System.out.println("현재 등급: " + gradeInfo.getGrade_name() + "\t계산된 리워드: " + reward);

		int currentPoint = (int) (buyerPoint - usePoint + reward); // 현재 포인트 - 사용한 포인트 + 적립된 포인트
		userSession.setBuyer_point(currentPoint);

		int currentPayment = userSession.getBuyer_payment() + totalPrice;
		userSession.setBuyer_payment(currentPayment);

		if (currentPayment > 50000) {
			userSession.setBuyer_grade("5");
		}
		if (currentPayment > 40000) {
			userSession.setBuyer_grade("4");
		}
		if (currentPayment > 30000) {
			userSession.setBuyer_grade("3");
		}
		if (currentPayment > 20000) {
			userSession.setBuyer_grade("2");
		} else {
			userSession.setBuyer_grade("1");
		}

		greenrecipeService.updateBuyerPayComplete(userSession);

		redirect.addAttribute("deliveryNum", deliveryNum);

		String paylist = payVO.getPay_itemNum();
		String[] array = paylist.replace("[", "").replace("]", "").replace(" ", "").split(",");
		DynamoItem item1 = new DynamoItem();
		ItemVO itemvo = new ItemVO();
		int a = 0;
		String itemNum = "";
		for (int i = 0; i < array.length; i++) {

			System.out.println(array[i]);

			a = Integer.parseInt(array[i]);
			itemvo = greenrecipeService.itemLikeInfo(a);

			itemNum = Integer.toString(itemvo.getItem_num());

			item1.setItem_name(itemvo.getItem_name());
			item1.setItemNum(itemNum);
			item1.setItem_stock(itemvo.getItem_stock());

			greenrecipeService.dynamodbUpdate(item1.getItemNum(), item1);
		}

		return "redirect:/payComplete";
		// 추후 장바구니 페이지로 수정
		// 혹은 장바구니로 갈건지 쇼핑을 계속할건지 물어보는 팝업 띄우기
	} catch (Exception e) {
		System.out.println(e);
	}
	return null;
}

@RequestMapping(value = "/payComplete")
public String payComplete(@RequestParam("deliveryNum") int deliveryNum,
		@ModelAttribute("BuyerVO") BuyerVO buyerVO,
		@ModelAttribute("ItemVO") ItemVO itemVO,
		@ModelAttribute("GradeVO") GradeVO gradeVO,
		HttpServletRequest request,
		Model model, HttpSession session) { // 메소드정의문 3형식
	
	try {
		
		System.out.println("주문 완료 페이지로 불러온 운송장번호: "+deliveryNum);
		
		BuyerVO buyervo = (BuyerVO) session.getAttribute("userSession");
		buyerVO.setBuyer_num(buyervo.getBuyer_num());
		BuyerVO userSession = greenrecipeService.getBuyerInfo(buyerVO);
		model.addAttribute("userInfo", userSession);
		
		gradeVO.setGrade_id(userSession.getBuyer_grade());
		GradeVO gradeInfo = greenrecipeService.getGradeInfo(gradeVO); // buyer의 현재 등급 정보 불러오기
		model.addAttribute("gradeInfo", gradeInfo);
		
		PayVO payInfo = greenrecipeService.getPayInfo(deliveryNum);
		model.addAttribute("payInfo", payInfo);
		
		// 대표 이미지를 불러오기 위해 주문목록의 가장 앞에 있는 아이템의 정보 불러오기
		String itemNum = payInfo.getPay_itemNum();
		int firstIndex = itemNum.indexOf("[");
		int endIndex = itemNum.indexOf(",");
		String subString = itemNum.substring(firstIndex+1, endIndex);
		itemVO.setItem_num(Integer.parseInt(subString));
		ItemVO itemInfo = greenrecipeService.getItemInfo(itemVO);
		System.out.println("subString: "+subString+"\titemInfo: "+itemInfo.getItem_name());
		model.addAttribute("itemInfo", itemInfo);
		//
		
		
		
		
	}catch(Exception e) {
		System.out.println(e);
	}

	return "payComplete";
}

		
		




		

	
	
	
	@RequestMapping("/catelistpage")
	public String catepage() { // 메소드정의문 3형식

		return "cateListPage";
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
