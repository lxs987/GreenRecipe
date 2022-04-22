package com.greenrecipe.main.service.impl;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBMapper;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBSaveExpression;
import com.amazonaws.services.dynamodbv2.model.AttributeValue;
import com.amazonaws.services.dynamodbv2.model.ExpectedAttributeValue;
import com.greenrecipe.main.service.GreenRecipeService;
import com.greenrecipe.main.service.dao.BuyerDAO;
import com.greenrecipe.main.service.dao.CartDAO;
import com.greenrecipe.main.service.dao.CateDAO;
import com.greenrecipe.main.service.dao.CouponDAO;
import com.greenrecipe.main.service.dao.GradeDAO;
import com.greenrecipe.main.service.dao.HashDAO;
import com.greenrecipe.main.service.dao.HelpDAO;
import com.greenrecipe.main.service.dao.IR_DAO;
import com.greenrecipe.main.service.dao.InquiryDAO;
import com.greenrecipe.main.service.dao.ItemDAO;
import com.greenrecipe.main.service.dao.ItemLikeDAO;
import com.greenrecipe.main.service.dao.ManagerDAO;
import com.greenrecipe.main.service.dao.PayDAO;
import com.greenrecipe.main.service.dao.RecipeDAO;
import com.greenrecipe.main.service.dao.ReviewDAO;
import com.greenrecipe.main.service.dao.SellerDAO;
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


@Service("greenrecipeService")
public class GreenRecipeServiceImpl implements GreenRecipeService {

	


	
	
	
					//buyer
	
	@Autowired
	private BuyerDAO buyerDAO;
	
	
	
	@Override
	@Transactional
						//CS
	
	public ArrayList<BuyerVO> getAllBuyer(BuyerVO buyerVO) {
		
		return buyerDAO.getAllBuyer(buyerVO); 
	 }
	 
	
	public BuyerVO loginCheck(BuyerVO buyerVO) {
		return buyerDAO.loginCheck(buyerVO);
	};

	
	public void insertBuyer(BuyerVO buyerVO) {
		buyerDAO.insertBuyer(buyerVO);
	};	
	
	
	public BuyerVO getBuyerinfoId(BuyerVO buyerVO) {
		return buyerDAO.getBuyerinfoId(buyerVO);
	}
	
	public BuyerVO getBuyerNum(BuyerVO buyerVO) {
		return buyerDAO.getBuyerNum(buyerVO);
	}

	
	public void updateBuyer(BuyerVO buyerVO) {
		buyerDAO.updateBuyer(buyerVO);
	};	
	
	public void deleteBuyer(BuyerVO buyerVO) {
		buyerDAO.deleteBuyer(buyerVO);
	};	
	
	
	
					//HG
	
	
	public BuyerVO getBuyerInfo(BuyerVO  buyerVO) {
		return buyerDAO.getBuyerInfo(buyerVO);
	};
	
	
	
				// JG
	
	public void updateBuyerPayComplete(BuyerVO buyerVO) {
		buyerDAO.updateBuyerPayComplete(buyerVO);
	}
	
	
	
	
	
	
	
	
	
	
	
	//seller

	@Autowired
	private SellerDAO sellerDAO;
	
	@Override
	@Transactional
	
	
	
	public SellerVO seller_loginCheck(SellerVO sellerVO) {
		return sellerDAO.seller_loginCheck(sellerVO);
	};
	
	
	
	
	public SellerVO  getSellerNum(SellerVO sellerVO) {
			return sellerDAO.getSellerNum(sellerVO);
	}

	
	public void updateSeller(SellerVO sellerVO) {
			sellerDAO.updateSeller(sellerVO);
	};	
	
	public void deleteSeller(SellerVO sellerVO) {
		sellerDAO.deleteSeller(sellerVO);
	};	
	
	public ArrayList<SellerVO> sellerAll(SellerVO sellerVO) {
	
	return sellerDAO.sellerAll(sellerVO); 
	};
	
	public void updateAccess(SellerVO sellerVO) {
		sellerDAO.updateAccess(sellerVO);
	};	

	
	public int accessCount() {
		return sellerDAO.accessCount();
	}
	

	
	
	//item
	
	@Autowired
	private ItemDAO itemDAO;
	
	
	
	@Override
	@Transactional
	
	
					//CS
	
	public ArrayList<ItemVO> getAllItem(ItemVO itemVO) {
		
		return itemDAO.getAllItem(itemVO); 
	 }
	 
	public ArrayList<ItemVO> getIteminfo(ItemVO itemVO) {
		
		return itemDAO.getIteminfo(itemVO); 
	 }
		
	public ItemVO Select_item(ItemVO itemVO) {
		
		return itemDAO.Select_item(itemVO);
	};
	
	
	public ArrayList<ItemVO> Select_item2(ItemVO itemVO) {
		
		return itemDAO.Select_item2(itemVO); 
	 }
	
	public ItemVO itemInfo(ItemVO itemVO) {
		
		return itemDAO.itemInfo(itemVO);
	};
	
	
	
	
	
					//HG
	
	public ItemVO itemLikeInfo (int itemLikeNum)  throws Exception{
		return itemDAO.itemLikeInfo(itemLikeNum);
	};
	
	public ArrayList<ItemVO> itemBestList (){
		return itemDAO.itemBestList();
	};
	
	public ArrayList<ItemVO> itemNewList (){
		return itemDAO.itemNewList();
	};
	
	public ArrayList<ItemVO> itemSaleList (){
		return itemDAO.itemSaleList();
	};
	
	public ArrayList<ItemVO> itemSearchList (String keyword){
		return itemDAO.itemSearchList(keyword);
	};
	
	public ArrayList<ItemVO> itemCateList (int cateNum){
		return itemDAO.itemCateList(cateNum);
	};
	
	
	
	
	
	
					//JG
	
	@Override // itemDetail.jsp
	public ItemVO getItemInfo(ItemVO itemVO) {
		return itemDAO.getItemInfo(itemVO);
	}
	
	@Override
	public ArrayList<ItemVO> recipeItem(int recipeNum) {

		return itemDAO.recipeItem(recipeNum);
	}
	
	@Override
	public void updateItemStockSelled(ItemVO itemVO) {
		itemDAO.updateItemStockSelled(itemVO);
		
	}
	
	
	
	
	
	
	
	
	
	
	//recipe
	
	@Autowired
	private RecipeDAO recipeDAO;
	
	
	
	@Override
	@Transactional
						//CS
	
	 public ArrayList<RecipeVO> getAllRecipe(RecipeVO recipeVO) {
		
		return recipeDAO.getAllRecipe(recipeVO); 
	 }
	 
	
	public RecipeVO selectRecipe(RecipeVO recipeVO) {
		return recipeDAO.selectRecipe(recipeVO);
	}
	
	
	 public ArrayList<RecipeVO> selectRecipe2(RecipeVO recipeVO) {
			
		return recipeDAO.selectRecipe2(recipeVO); 
	 }
	 
	
	
	 public ArrayList<RecipeVO> IR_recipe2(RecipeVO recipeVO) {
			
		return recipeDAO.IR_recipe2(recipeVO); 
	 }   
	 
	 
	   public ArrayList<RecipeVO> combi_recipe(String combi) {
			
			return recipeDAO.combi_recipe(combi); 
		 }
		 
	 

	 
	 
	 					//HG
	 
	 public RecipeVO RecipeLikeInfo (int itemLikeNum) {
			return recipeDAO.RecipeLikeInfo(itemLikeNum);
		};
						
		
		
						//JG
	
		// RecipeDetail.jsp
	public RecipeVO getRecipeInfo(RecipeVO recipeVO) {
		
			return recipeDAO.getRecipeInfo(recipeVO);
		}
	 
	 
	 
	
	
	

	 
	 
	 
	 
	 
	 
	
	 	//itemLike
		
		@Autowired 
		private ItemLikeDAO itemLikeDAO;
		
		@Override
		@Transactional
		
		
		
		

		public ArrayList<ItemLikeVO> itemLikeNum(ItemLikeVO itemLikeVO) {
			return itemLikeDAO.itemLikeNum(itemLikeVO);
		}; 
		
		public void deleteItemLike(int itemLikeNum) {
			itemLikeDAO.deleteItemLike(itemLikeNum);
		};

		public ArrayList<ItemLikeVO> recipeLikeNum(ItemLikeVO itemLikeVO){
			return itemLikeDAO.recipeLikeNum(itemLikeVO);
		};
		
		public void deleteRecipeLike(int itemLikeNum) {
			itemLikeDAO.deleteRecipeLike(itemLikeNum);
		};
		
		@Override
		public void likeButton(ItemLikeVO itemLikeVO) {
			itemLikeDAO.likeButton(itemLikeVO);
		}




		
	
		
		
		
		
		
					//review
		
		
		@Autowired
		private ReviewDAO reviewDAO;
		
		@Override
		@Transactional
		
		
		
		public ArrayList<ReviewVO> reviewList(int buyerNum){
			 return reviewDAO.reviewList(buyerNum);
		 };
		public void deleteReview (int reviewNum) {
			reviewDAO.deleteReview(reviewNum);
		};
		
		public void insertReview (ReviewVO reviewvo) {
			reviewDAO.insertReview(reviewvo);
		};
	
		 
		// itemDetail.jsp
		public ArrayList<ReviewVO> itemReviewList(int itemNum){
			 return reviewDAO.itemReviewList(itemNum);
		 };
		 
		 public int itemReviewNumber(int itemNum) {
			 return reviewDAO.itemReviewNumber(itemNum);
		 };
		

		
		
		
		
		
		
		
		
		 
		 
		 
		 
		 
		 				
		 				//inquiry
		 
		 @Autowired
		 private InquiryDAO inquiryDAO;
		 
			@Override
			@Transactional
		 
		 
		 
		 public ArrayList<InquiryVO> inquiryList(int buyerNum){
			return inquiryDAO.inquiryList(buyerNum);
		 };
		 
		 public ArrayList<InquiryVO> seller_inquiry(String sellerId){
				return inquiryDAO.seller_inquiry(sellerId);
			 };
		 
		 
			  
		public InquiryVO seller_answer(InquiryVO inquiryVO) {
				return inquiryDAO.seller_answer(inquiryVO);
			};
			
			
		
		public void updateAnswer(InquiryVO inquiryVO) {
			inquiryDAO.updateAnswer(inquiryVO);
		};	
		 
			
			
			
		 					//pay
		 
		 @Autowired
		 private PayDAO payDAO;
		 
			@Override
			@Transactional
		 
		public  ArrayList<PayVO> payList(int buyerNum) throws Exception{
			return payDAO.payList(buyerNum);
		};
		
		
		public void insert_Pay(PayVO payVO) {
			
			payDAO.insert_Pay(payVO);
		};	
		
		 
		
		 public  ArrayList<PayVO> payAll(PayVO payVO) {
				
				return payDAO.payAll(payVO); 
			 }
		 
		 
		 
		 
		
		//JG
		
		public void insertPay(PayVO payVO) {
			payDAO.insertPay(payVO);
		}
		
		public PayVO getPayInfo(int deliveryNum) {
			return payDAO.getPayInfo(deliveryNum);
		}
		
		
		
		
		
		
		
		
		
		
		
		
						//cate
		
		@Autowired
		private CateDAO cateDAO;
		
		@Override
		@Transactional
		
		
		
		public CateVO cateInfo(int cateNum) {
			return cateDAO.cateInfo(cateNum);
		};
		
		public ArrayList<CateVO> getAllCate() {
			return cateDAO.getAllCate();
		}
		
		
		
		
		
		
		
		
				//grade
		
		// JG
		
		@Autowired
		private GradeDAO gradeDAO;
		
		public GradeVO getGradeInfo(GradeVO gradeVO) {
			return gradeDAO.getGradeInfo(gradeVO);
		}
		
		public GradeVO getGrade(GradeVO gradeVO) {
			return gradeDAO.getGrade(gradeVO);
		}
		
		
		
		
		
				//coupon
		
		@Autowired
		private CouponDAO couponDAO;
		
		@Override
		@Transactional
		
		public ArrayList<CouponVO> buyerCouponList(int buyerNum) {
			return couponDAO.buyerCouponList(buyerNum);
		}
	 
	 
	 
	 
	 
		
		

		
						//cart
							
		@Autowired
		private CartDAO cartDAO;
		
								//CS
		
		public ArrayList<CartVO> cart_get(CartVO cartVO) {
			
			return cartDAO.cart_get(cartVO); 
		 }

		 
		
		public void insertCart(CartVO cartVO) {
			
			cartDAO.insertCart(cartVO);
		};	
		
		
		
		public void deleteCart(CartVO cartVO) {
			
			cartDAO.deleteCart(cartVO);
		};	
		
		
				// JG
		
		public void itemCart(CartVO cartVO) {
			
			cartDAO.itemCart(cartVO);
			
		}
		
		@Override
		public CartVO getCartinfo(CartVO cartVO) {

			return cartDAO.getCartinfo(cartVO);
		}

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	 
	 
	 
	 
	 
	 
	 
	 

		
		
		
		
					//CS
			//IR      

			@Autowired
			private IR_DAO ir_DAO;

		public ArrayList<IR_VO> IR_all(IR_VO ir_VO) {
	
		return ir_DAO.IR_all(ir_VO); 
		}

		public ArrayList<IR_VO> IR_like(IR_VO ir_VO) {

			return ir_DAO.IR_like(ir_VO); 
		}

		public ArrayList<IR_VO> IR_recipe(IR_VO ir_VO) {

			return ir_DAO.IR_recipe(ir_VO); 
		}

		public ArrayList<IR_VO> recipe_detail(IR_VO ir_VO) {

			return ir_DAO.recipe_detail(ir_VO); 
		}


		public ArrayList<IR_VO> cart_itemNum(IR_VO ir_VO) {

			return ir_DAO.cart_itemNum(ir_VO); 
		}

		public ArrayList<IR_VO> cart_item(IR_VO ir_VO) {

			return ir_DAO.cart_item(ir_VO); 
		}

		public ArrayList<IR_VO> cart_item2(IR_VO ir_VO) {

			return ir_DAO.cart_item2(ir_VO); 
		}

		public void IR_deleteCart(IR_VO irVO) {

			ir_DAO.IR_deleteCart(irVO);
		};	



		
		
		
		

				@Autowired
				private ManagerDAO managerDAO;
		
		
		//manager
		

		public ManagerVO manager_loginForm(ManagerVO managerVO) {
			return managerDAO.manager_loginForm(managerVO);
		};


		public ManagerVO manager_codeCheck(ManagerVO managerVO) {
			return managerDAO.manager_codeCheck(managerVO);
		};

		public ManagerVO manager_loginCheck(ManagerVO managerVO) {
			return managerDAO.manager_loginCheck(managerVO);
		};
		
	 
	 
		
		
		
		
		
		
		
		
		
		
		
		
		
		
					//YS
		
	
		
		// id check
		
		public int idCheck(String buyer_id) {
			int cnt = buyerDAO.idCheck(buyer_id);
			return cnt;
		}
		
		
		// code check (구현 제대로 안됨)
		
//		public int codeCheck(String buyer_code) {
//			int cnt = buyerDAO.idCheck(buyer_code);
//			return cnt;
//		}
		
		
		
		
		// hash
		@Autowired
		private HashDAO hashDAO;
		
		public HashVO getHashInfo(HashVO hashVO) {
		return hashDAO.getHashInfo(hashVO);
		}
		
		
		public int codeCheck(String buyer_recomcode) {
			int cnt = buyerDAO.codeCheck(buyer_recomcode);
			System.out.println(buyer_recomcode);
			return cnt;
		}
	


		
		
		
		// help
		@Autowired
		private HelpDAO helpDAO;
		
		@Override
		@Transactional
		
		public ArrayList<HelpVO> helpList(HelpVO helpVO, @Param("s") int start, @Param("e") int end) {
			return helpDAO.helpList(helpVO, start, end);
		}
		
		public int helpCount() {
			return helpDAO.helpCount();
		}
		
		public String insertHelp(MultipartHttpServletRequest mul, HttpServletRequest request) {
			HelpVO vo = new HelpVO();
			vo.setHelp_title(mul.getParameter("help_title"));
			vo.setHelp_content(mul.getParameter("help_content"));
			int result = 0;
			String msg, url;
			try {
				result = helpDAO.insertHelp(vo);
			} catch (Exception e) {
				result = 0;
				e.printStackTrace();
			}
			
			if(result == 1) {
				msg = "새 글이 추가되었습니다.";
				url = "/help";
			} else {
				msg = "문제가 발생되었습니다!";
				url = "/helpWriteForm";
			}
			return GreenRecipeServiceImpl.getMessage(request, msg, url);
		}
		
		public static String getMessage(HttpServletRequest request, String msg, String url) {
			String message = null;
			String path = request.getContextPath();
			message = "<script>alert('" + msg + "');";
			message += "location.href='"+ path + url + "'; </script>";
			return message;
		}
		
		public HelpVO helpContentView(int help_num) {
			return helpDAO.helpContentView(help_num);
		}
		
		public String updateHelp(MultipartHttpServletRequest mul, HttpServletRequest request) {
			
			HelpVO vo = new HelpVO();
			vo.setHelp_num(Integer.parseInt(mul.getParameter("help_num")));
			vo.setHelp_title(mul.getParameter("help_title"));
			vo.setHelp_content(mul.getParameter("help_content"));
			int result = helpDAO.updateHelp(vo);
			String msg, url;
			if(result == 1) {
				msg = "성공적으로 수정되었습니다.";
				url = "/help";
			} else {
				msg = "수정 중 문제가 발생하였습니다.";
				url = "/helpModifyForm";
			}
			String message = GreenRecipeServiceImpl.getMessage(request, msg, url);
			return message;
		}
		
		public String deleteHelp(int help_num, HttpServletRequest request) {
			int result = helpDAO.deleteHelp(help_num);
			String msg = null, url=null;
			if(result == 1) {
				msg = "성공적으로 삭제 되었습니다.";
				url = "/help";
			} else {
				msg = "삭제 중 문제가 발생하였습니다.";
				url = "/helpContentView";
			}
			String message = GreenRecipeServiceImpl.getMessage(request,msg,url);
			return message;
		}
		
		public ArrayList<ReplyVO> replyList(int write_group) {
			return helpDAO.replyList(write_group);
		}

		public void insertHelpReply(ReplyVO replyVO) {
			helpDAO.insertHelpReply(replyVO);
		}
		
		
	
		
		public HelpVO helpBuyer(HelpVO helpvo) {
			
			return helpDAO.helpBuyer(helpvo); 
		 }
		
		
		public void insertHelp2(HelpVO helpVO) {
			helpDAO.insertHelp2(helpVO);
		};	
		
		
		
		public void deleteHelp2(HelpVO helpVO) {
			helpDAO.deleteHelp2(helpVO);
		};	
		
		
		public void updateHelp2(HelpVO helpVO) {
			helpDAO.updateHelp2(helpVO);
		};	
		
		
		public HelpVO helpBuyer2(HelpVO helpvo) {
			
			return helpDAO.helpBuyer2(helpvo); 
		 }
		
		public void updateHelp3(HelpVO helpVO) {
			helpDAO.updateHelp3(helpVO);
		};	
		
		
		
		
		
		
		
	 
	
		
		
		
		
		
		
		
		
		
		// AWS
		
				 @Autowired
				    private DynamoDBMapper dynamoDBMapper;


				    public void dynamodbUpdate(String itemNum, DynamoItem item) {

				        try {
				            dynamoDBMapper.save(item, new DynamoDBSaveExpression().withExpectedEntry("itemNum",
				                    new ExpectedAttributeValue(new AttributeValue().withS(itemNum))));

				        } catch (Exception e) {
				            dynamoDBMapper.save(item);
				            throw e; 
				        } 
				    }
				
			 
		
	
		
		
	
}



