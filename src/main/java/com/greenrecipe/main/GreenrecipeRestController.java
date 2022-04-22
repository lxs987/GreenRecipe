package com.greenrecipe.main;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RestController;

import com.greenrecipe.main.service.GreenRecipeService;

@RestController
public class GreenrecipeRestController {

	@Resource(name = "greenrecipeService") 
	private GreenRecipeService greenrecipeService; 

	
}
