package com.greenrecipe.main.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greenrecipe.main.service.GreenRecipeService;
import com.greenrecipe.main.vo.IR_VO;
import com.greenrecipe.main.vo.ItemVO;
import com.greenrecipe.main.vo.RecipeVO;


@Controller
public class RecipeController {
	
	@Resource(name = "greenrecipeService") 
	private GreenRecipeService greenrecipeService; 

	
	
	
			//-------------------- CS -------------------------------------------------
	

	
	//  recipe 페이지     >>      item 전체 출력
	// item_num과 recipe_itemNum 을 조인하여   >>   Item 테이블, recipe 테이블 전체 출력
	@RequestMapping("/recipe")
	public String IR_all(Model model, HttpSession session,
			@ModelAttribute("ir_VO") IR_VO ir_VO,
			@ModelAttribute("recipeVO") RecipeVO recipeVO)
	throws Exception {
		
		ArrayList<RecipeVO> recipelist = greenrecipeService.getAllRecipe(recipeVO);
		
		model.addAttribute("recipelist" ,recipelist);
		
		
		ArrayList<IR_VO> IR_list = greenrecipeService.IR_all(ir_VO);
		
		model.addAttribute("IR_list", IR_list);
		
		return "recipe";
	}
	

	
	
	
	
	
	

	
	
	// IR_all 에서 Item_name(like % %)으로 검색하여 출력    >>     IR_recipe에서  recipe_itemNum 출력
	@RequestMapping(value = "/IR_recipe2")
	public String IR_recipe2(Model model, HttpSession session,
			@ModelAttribute("ir_VO") IR_VO ir_VO,
			@ModelAttribute("recipeVO") RecipeVO recipeVO)
	throws Exception {

		ArrayList<IR_VO> IR_list = greenrecipeService.IR_recipe(ir_VO);
		
		model.addAttribute("IR_list", IR_list);
		
		return "recipe_choice";
	}
	
	
	
	
	
	@RequestMapping(value = "/recipe_detail")
	public String recipe_detail(Model model, HttpSession session,
			@ModelAttribute("ir_VO") IR_VO ir_VO,
			@ModelAttribute("recipeVO") RecipeVO recipeVO)
	throws Exception {

		ArrayList<IR_VO> IR_list = greenrecipeService.recipe_detail(ir_VO);
		
		model.addAttribute("IR_list", IR_list);
		
		return "recipe_detail";
	}
	
	
	

	
	
	



	
	
	

	
	// ArrayList 형태 
	// item 검색하여 레시피 출력하기   
	@RequestMapping(value = "/recipe_search")
	public String recipe_search(Model model, HttpServletRequest request,
			@ModelAttribute("ir_VO") IR_VO ir_VO,
			@ModelAttribute("recipeVO") RecipeVO recipeVO,
			@ModelAttribute("itemVO") ItemVO itemVO,
			@RequestParam("item_name") String[] item_name )
	throws Exception {

	
		ArrayList<ArrayList<RecipeVO>> combilist = new ArrayList<ArrayList<RecipeVO>>();
		
		ArrayList<ItemVO> itemvo2 = new ArrayList<ItemVO>( );
		
		String[] arr = request.getParameterValues("item_name");
		
		//ArrayList<ItemVO> arr_item2 = new ArrayList(Arrays.asList(arr));
		
		
		//for(String itemlist1 : arr) {
			
		//	itemVO.setItem_name(itemlist1);
			
		//	itemvo2.add(itemVO);
			
		for(int j=0; j<arr.length; j++) {
			itemVO.setItem_name(arr[j]);
			itemvo2.add(itemVO);
			
				System.out.println("itemvo2 :"+itemvo2.size());
		
			
			 for (int i=0; i < itemvo2.size(); i++) {
				
			   ArrayList<RecipeVO> recipelist = greenrecipeService.combi_recipe(itemvo2.get(i).getItem_name());

			   
			   model.addAttribute("recipelist", recipelist);
			   
			   		System.out.println("recipelist :"+recipelist.size());
			
			   
			   combilist.add(recipelist);
			   
			   
			   
			    for(int k=0; k < combilist.size(); k++) {
			    	
			    	recipelist.addAll( combilist.get(k) );
			    	
			   // 	HashSet<RecipeVO> hash_recipe = new HashSet<RecipeVO>();
			    		
			    	for (int y = 0; y < recipelist.size(); y++) {
			    		
			             for (int z = 0; z < recipelist.size(); z++) {
			            	 
			                 if (y == z) {
			                	 
			                 } 
			                 else if (recipelist.get(z).getRecipe_name().equals(recipelist.get(y).getRecipe_name())) {
			                	 
			                	 recipelist.remove(z);
			                 }
			             }
			             
			         }
			 	
			    }
			    
			    	System.out.println("총 레시피 갯수 : " +recipelist.size() );
			  model.addAttribute( "recipelist2" ,  recipelist );
			    			    
			}
			
		}
		
		
		
		/*
		/////////////////////////////////////////////////////////////////////////
		ArrayList<IR_VO> IR_list = greenrecipeService.recipe_detail(ir_VO);
		
		model.addAttribute("IR_list", IR_list);
		
		/////////////////////////////////////////////////////////////////////////
		*/
		
		
		
		return "recipe_detail";
	};
		
	

	
	


	
	
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	//  recipe 페이지     >>      item 전체 출력
	// item_num과 recipe_itemNum 을 조인하여   >>   Item 테이블, recipe 테이블 전체 출력
	@RequestMapping("/recipe_searchForm")
	public String recipe_searchForm(Model model, HttpSession session,
			@ModelAttribute("ir_VO") IR_VO ir_VO)
	throws Exception {
		
		
		ArrayList<IR_VO> IR_list = greenrecipeService.IR_all(ir_VO);
		
		model.addAttribute("IR_list", IR_list);
		
		return "recipe_searchForm";
	}
	
	
	
	@RequestMapping("/recipe_search2")
	public String recipe_search2(Model model,
			@ModelAttribute("ir_VO") IR_VO ir_VO,
			@ModelAttribute("recipeVO") RecipeVO recipeVO)
			throws Exception { 
	
	
		
		return "recipe_searchForm";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
		
		
		
	

	
	
	
	
	
	

	
	@RequestMapping(value = "/item_recipe")
	public String Select_item(@ModelAttribute("itemVO") ItemVO itemVO,
			@ModelAttribute("recipeVO") RecipeVO recipeVO,
			Model model)
			throws Exception { 
		
		ItemVO get_item = greenrecipeService.Select_item(itemVO);
	
		
		recipeVO.setRecipe_num(get_item.getItem_recipeNum());
	
	
		
		ArrayList<RecipeVO> recipelist = greenrecipeService.selectRecipe2(recipeVO);
		
		model.addAttribute("recipelist" ,recipelist);
		
		return "sub/selectRecipe";
	}
	

	


	
	
	

	@RequestMapping(value = "/selelct_recipe")
	public String Select_recipe(@ModelAttribute("itemVO") ItemVO itemVO,
			@ModelAttribute("recipeVO") RecipeVO recipeVO,
			Model model)
			throws Exception { 
		
		ItemVO get_item = greenrecipeService.Select_item(itemVO);
		
		
		recipeVO.setRecipe_num(get_item.getItem_recipeNum());
	
	
		
		ArrayList<RecipeVO> recipelist = greenrecipeService.selectRecipe2(recipeVO);;
		
		model.addAttribute("recipelist" ,recipelist);
		
		return "sub/selectRecipe";
	}
	
	
	
	
	
	
	
	//-------------------- CS -------------------------------------------------	
	
	
	
	
	
	
	
	
	



	
	
	
	
	
	
	
	
	@RequestMapping("/test5")
	public String test5() { // 메소드정의문 3형식

		return "sub/test5";
	}
	
	
	
	
	
	
	
	
	
}
