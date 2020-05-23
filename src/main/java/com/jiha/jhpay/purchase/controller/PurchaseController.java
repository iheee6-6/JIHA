package com.jiha.jhpay.purchase.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jiha.jhpay.purchase.service.PurchaseService;
import com.jiha.jhpay.purchase.vo.Purchase;

@Controller
public class PurchaseController {
@Autowired
PurchaseService pService;

@RequestMapping("order.do")
public ModelAndView order(ModelAndView mv,Purchase purchase) {
	int result =pService.insertOrder(purchase);
	if(result>0) {
		int num =pService.getOrderNo(purchase);
		if(num>0)
		purchase.setPurchaseNo(num);
		mv.addObject("purchase", purchase);
		mv.setViewName("user/resultView");
	}
	return mv;
}

}
