package com.greenrecipe.main.vo;

import lombok.Data;

@Data
public class RecipeVO {

	
	
	private int recipe_num;
	private String recipe_name;
	private String  recipe_image;
	private String recipe_detailImage;
	private String recipe_itemNum;
	private String recipe_material;
	private int recipe_reco;
	private int recipe_price;
	
	
	
	
	
	
	public RecipeVO() {
		super();
		
	}





	public RecipeVO(int recipe_num, String recipe_name, String recipe_image, String recipe_detailImage,
			String recipe_itemNum, String recipe_material, int recipe_reco, int recipe_price) {
		super();
		this.recipe_num = recipe_num;
		this.recipe_name = recipe_name;
		this.recipe_image = recipe_image;
		this.recipe_detailImage = recipe_detailImage;
		this.recipe_itemNum = recipe_itemNum;
		this.recipe_material = recipe_material;
		this.recipe_reco = recipe_reco;
		this.recipe_price = recipe_price;
	}





	public int getRecipe_num() {
		return recipe_num;
	}





	public void setRecipe_num(int recipe_num) {
		this.recipe_num = recipe_num;
	}




	public String getRecipe_name() {
		return recipe_name;
	}





	public void setRecipe_name(String recipe_name) {
		this.recipe_name = recipe_name;
	}





	public String getRecipe_image() {
		return recipe_image;
	}





	public void setRecipe_image(String recipe_image) {
		this.recipe_image = recipe_image;
	}





	public String getRecipe_detailImage() {
		return recipe_detailImage;
	}





	public void setRecipe_detailImage(String recipe_detailImage) {
		this.recipe_detailImage = recipe_detailImage;
	}





	public String getRecipe_itemNum() {
		return recipe_itemNum;
	}





	public void setRecipe_itemNum(String recipe_itemNum) {
		this.recipe_itemNum = recipe_itemNum;
	}





	public String getRecipe_material() {
		return recipe_material;
	}





	public void setRecipe_material(String recipe_material) {
		this.recipe_material = recipe_material;
	}





	public int getRecipe_reco() {
		return recipe_reco;
	}





	public void setRecipe_reco(int recipe_reco) {
		this.recipe_reco = recipe_reco;
	}





	public int getRecipe_price() {
		return recipe_price;
	}





	public void setRecipe_price(int recipe_price) {
		this.recipe_price = recipe_price;
	}






	
	
	
	
	
	
	
	
	
	
	
	
	
}
