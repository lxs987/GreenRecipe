package com.greenrecipe.main.vo;

import lombok.Data;



@Data
public class IR_VO {

	private BuyerVO buyerVO;
	private ItemVO itemVO;
	private RecipeVO recipeVO;
	private CartVO cartVO;
	private ManagerVO managerVO;
	private HelpVO helpVO;
	
	
	
	
	public IR_VO() {
		super();
		
	}




	public IR_VO(BuyerVO buyerVO, ItemVO itemVO, RecipeVO recipeVO, CartVO cartVO, ManagerVO managerVO, HelpVO helpVO) {
		super();
		this.buyerVO = buyerVO;
		this.itemVO = itemVO;
		this.recipeVO = recipeVO;
		this.cartVO = cartVO;
		this.managerVO = managerVO;
		this.helpVO = helpVO;
	}




	public BuyerVO getBuyerVO() {
		return buyerVO;
	}




	public void setBuyerVO(BuyerVO buyerVO) {
		this.buyerVO = buyerVO;
	}




	public ItemVO getItemVO() {
		return itemVO;
	}




	public void setItemVO(ItemVO itemVO) {
		this.itemVO = itemVO;
	}




	public RecipeVO getRecipeVO() {
		return recipeVO;
	}




	public void setRecipeVO(RecipeVO recipeVO) {
		this.recipeVO = recipeVO;
	}




	public CartVO getCartVO() {
		return cartVO;
	}




	public void setCartVO(CartVO cartVO) {
		this.cartVO = cartVO;
	}




	public ManagerVO getManagerVO() {
		return managerVO;
	}




	public void setManagerVO(ManagerVO managerVO) {
		this.managerVO = managerVO;
	}




	public HelpVO getHelpVO() {
		return helpVO;
	}




	public void setHelpVO(HelpVO helpVO) {
		this.helpVO = helpVO;
	}

	
	
	
	
	
	
}
