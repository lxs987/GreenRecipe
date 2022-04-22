package com.greenrecipe.main.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.greenrecipe.main.vo.BuyerVO;
import com.greenrecipe.main.vo.CartVO;
import com.greenrecipe.main.vo.CateVO;
import com.greenrecipe.main.vo.CouponVO;
import com.greenrecipe.main.vo.DynamoItem;
import com.greenrecipe.main.vo.GradeVO;
import com.greenrecipe.main.vo.HashVO;
import com.greenrecipe.main.vo.HelpVO;
import com.greenrecipe.main.vo.IR_VO;
import com.greenrecipe.main.vo.InquiryVO;
import com.greenrecipe.main.vo.ItemLikeVO;
import com.greenrecipe.main.vo.ItemVO;
import com.greenrecipe.main.vo.ManagerVO;
import com.greenrecipe.main.vo.PayVO;
import com.greenrecipe.main.vo.RecipeVO;
import com.greenrecipe.main.vo.ReplyVO;
import com.greenrecipe.main.vo.ReviewVO;
import com.greenrecipe.main.vo.SellerVO;

public interface GreenRecipeService {

	
	
	
	
	
	
	
	
								// CS
	
	
	//IR
	ArrayList<IR_VO> IR_all(IR_VO irVO) throws Exception;
	
	ArrayList<IR_VO> IR_like(IR_VO irVO) throws Exception;
	
	ArrayList<IR_VO> IR_recipe(IR_VO irVO) throws Exception;
	
	ArrayList<IR_VO> recipe_detail(IR_VO irVO) throws Exception;
	
	void IR_deleteCart(IR_VO irVO);
	
	 
	
	//cart
	ArrayList<IR_VO> cart_itemNum(IR_VO irVO) throws Exception;
	
	ArrayList<IR_VO> cart_item(IR_VO irVO) throws Exception;
	
	ArrayList<IR_VO> cart_item2(IR_VO irVO) throws Exception;
	
	ArrayList<CartVO> cart_get(CartVO cartVO) throws Exception;
	
	void insertCart(CartVO cartVO);
	
	void deleteCart(CartVO cartVO);
	
	
	
	
	
	//buyer
	 ArrayList<BuyerVO> getAllBuyer(BuyerVO buyerVO) throws Exception;

	 BuyerVO loginCheck(BuyerVO buyerVO);
	
	 void insertBuyer(BuyerVO buyerVO);	
	 
	 BuyerVO getBuyerinfoId(BuyerVO buyerVO); 
	
	 BuyerVO getBuyerNum(BuyerVO buyerVO);
	 
	 void updateBuyer(BuyerVO buyerVO);
	 
	 void deleteBuyer(BuyerVO buyerVO);
	 
	 //manager
	 
	 	ManagerVO manager_loginForm(ManagerVO managerVO);
	 
	 	ManagerVO manager_codeCheck(ManagerVO managerVO);
	 
	 	ManagerVO manager_loginCheck(ManagerVO managerVO);
	 
	 //Item
		ArrayList<ItemVO> getAllItem(ItemVO itemVO) throws Exception;
		
		ArrayList<ItemVO> getIteminfo(ItemVO itemVO) throws Exception;

		ItemVO Select_item(ItemVO itemVO);
		
		ItemVO itemInfo(ItemVO itemVO);
		
		ArrayList<ItemVO> Select_item2(ItemVO itemVO) throws Exception;
		

		//Recipe
		ArrayList<RecipeVO> getAllRecipe(RecipeVO recipeVO) throws Exception;

		RecipeVO selectRecipe(RecipeVO recipeVO); 
		
		
		ArrayList<RecipeVO> selectRecipe2(RecipeVO recipeVO) throws Exception;
		
		
		ArrayList<RecipeVO> IR_recipe2(RecipeVO recipeVO) throws Exception;
		
		ArrayList<RecipeVO> combi_recipe(String combi) throws Exception;
		
		
		//pay
		void insert_Pay(PayVO payVO);
		
		 ArrayList<PayVO> payAll(PayVO payVO) throws Exception;
		
		
		 
		//seller
		 SellerVO seller_loginCheck(SellerVO sellerVO); 
		
		 SellerVO getSellerNum(SellerVO sellerVO); 
		
		 void updateSeller(SellerVO sellerVO);
		
		 void deleteSeller(SellerVO sellerVO);
		 
		 ArrayList<SellerVO> sellerAll(SellerVO sellerVO) throws Exception;
		 
		 void updateAccess(SellerVO sellerVO);
		 
		 int accessCount();
		 
		 
		 //inquiry
		
		 ArrayList<InquiryVO> seller_inquiry(String sellerId);
		 
		 InquiryVO seller_answer(InquiryVO inquiryVO); 
		
		 void updateAnswer(InquiryVO inquiryVO); 
		 
		 
		
		
		
							// HG
		
		BuyerVO getBuyerInfo(BuyerVO buyerVO);

		ArrayList<ItemLikeVO> itemLikeNum(ItemLikeVO itemLikeVO);

		ItemVO itemLikeInfo(int itemLikeNum)  throws Exception;
		
		void deleteItemLike(int itemLikeNum);
		
		ArrayList<ItemLikeVO> recipeLikeNum(ItemLikeVO itemLikeVO);
		
		void deleteRecipeLike(int itemLikeNum);
		
		RecipeVO RecipeLikeInfo (int itemLikeNum);
		
		ArrayList<ReviewVO> reviewList(int buyerNum);
		
		void deleteReview (int reviewNum);
		
		ArrayList<InquiryVO> inquiryList(int buyerNum);
		
		ArrayList<PayVO> payList(int buyerNum) throws Exception;
		
		ArrayList<ItemVO> itemBestList ();
		
		ArrayList<ItemVO> itemNewList ();
		
		ArrayList<ItemVO> itemSaleList ();
		
		ArrayList<ItemVO> itemSearchList (String keyword);
		
		ArrayList<ItemVO> itemCateList (int cateNum);
		
		CateVO cateInfo(int cateNum);
		
		ArrayList<CouponVO> buyerCouponList(int buyerNum);
		
		void insertReview (ReviewVO reviewvo);

		
		
		
		
		
		
		
		
		
		
					// JG
		
		int itemReviewNumber(int itemNum);
		
		
		// 03-27 itemDetail
		
		ItemVO getItemInfo(ItemVO itemVO);
		
		GradeVO getGradeInfo(GradeVO gradeVO);
		
		ArrayList<ReviewVO> itemReviewList(int itemNum);
		
		
		// 03-27 recipeDetail
		
		RecipeVO getRecipeInfo(RecipeVO recipeVO);
		
		//ArrayList<CouponVO> buyerCouponList(int buyerNum); HG에 있음
		
		ArrayList<CateVO> getAllCate();
		
		void itemCart (CartVO cartVO);
		
		ArrayList<ItemVO> recipeItem(int recipeNum);

		void likeButton(ItemLikeVO itemLikeVO);
		
		
		
		
		
		//3차
		CartVO getCartinfo(CartVO cartVO);
		
		void updateItemStockSelled(ItemVO itemVO);
		
		void insertPay(PayVO payVO);
		
		void updateBuyerPayComplete(BuyerVO buyerVO); //등급 업데이트
	 
		GradeVO getGrade(GradeVO gradeVO);
		
		PayVO getPayInfo(int deliveryNum);
		
		
		
		
		
		
		
		
		
		
		
		
				//YS
		
		// id, code check

		int idCheck(String buyer_id);
		
		int codeCheck(String buyer_recomcode);


			// hash

		HashVO getHashInfo(HashVO hashVO);


		// help
		
		ArrayList<HelpVO> helpList(HelpVO helpVO, @Param("s") int start, @Param("e") int end);
		
		int helpCount();
		
		String insertHelp(MultipartHttpServletRequest mul, HttpServletRequest request);
		
		HelpVO helpContentView(int help_num);
		
		String updateHelp(MultipartHttpServletRequest mul, HttpServletRequest request);
		
		String deleteHelp(int help_num, HttpServletRequest request);
		
		ArrayList<ReplyVO> replyList(int write_group);
		
		void insertHelpReply(ReplyVO replyVO);
		
		
		
		
		HelpVO helpBuyer(HelpVO helpvo);
		
		void insertHelp2(HelpVO helpVO);
		
		void deleteHelp2(HelpVO helpVO);
		
		void updateHelp2(HelpVO helpVO);
		
		HelpVO helpBuyer2(HelpVO helpvo);
		
		void updateHelp3(HelpVO helpVO);

	
		
		

		
		
		
		
		
		

		// 2022-04-13
		void dynamodbUpdate(String itemNum, DynamoItem item) ;
		
		
		
		
		
		
	 
	 
}
