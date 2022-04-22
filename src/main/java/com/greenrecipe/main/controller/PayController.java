package com.greenrecipe.main.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.greenrecipe.main.service.GreenRecipeService;

@Controller
public class PayController {

	@Resource(name = "greenrecipeService")
	private GreenRecipeService greenrecipeService;
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// --------------------------------- CS---------------------------


	
/*
	
	// test
	// 장바구니에서 pay로 insert
	@RequestMapping(value = "/insert_Pay")
	public String insert_Pay(@ModelAttribute("cartVO") CartVO cartVO, @ModelAttribute("payVO") PayVO payVO, Model model)
			throws Exception {

		greenrecipeService.insert_Pay(payVO);

		String[] arr = payVO.getPay_cartNum().split(",");

		ArrayList<CartVO> cart7 = new ArrayList<CartVO>();

		for (int i = 0; i < arr.length; i++) {

			cartVO.setCart_id(Integer.parseInt(arr[i]));

			cart7.add(cartVO);
		}

		for (int j = 0; j < cart7.size(); j++) {

			greenrecipeService.deleteCart(cart7.get(j));

			System.out.println(cart7.get(j));
		}

		return "redirect:/payComplete";
	}
*/
	// --------------------------------- CS--------------------------------

	
	
	

}
