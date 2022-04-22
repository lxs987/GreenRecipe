package com.greenrecipe.main.service.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.greenrecipe.main.vo.RecipeVO;


@Mapper
public interface RecipeDAO {

	
					//CS
	
	ArrayList<RecipeVO> getAllRecipe(RecipeVO recipeVO);
	
	
	RecipeVO selectRecipe(RecipeVO recipeVO);
	
	
	ArrayList<RecipeVO> selectRecipe2(RecipeVO recipeVO);
	
	ArrayList<RecipeVO>  IR_recipe2(RecipeVO recipeVO);
	
	ArrayList<RecipeVO> combi_recipe(String combi);
	
	
	
	
	
				// HG
	
	RecipeVO RecipeLikeInfo (int itemLikeNum);
	
	
	
	
				
	
	
				// JG
	
	RecipeVO getRecipeInfo (RecipeVO recipeVO);



	
	
	
	
}