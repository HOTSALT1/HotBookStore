package main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import order.service.OrderService;
import shop.bean.OrderBy;
import shop.service.ShopService;

@Controller
public class IndexController {
	@Autowired
	OrderService orderService;
	
	@Autowired
	ShopService shopService;
	

	@RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
	public ModelAndView index1(ModelAndView mav) {
		orderService.loadCart(mav);
		shopService.getDPBooks(mav, "all", "best", 12, OrderBy.SCORE, "best_book_list");
		shopService.getDPBooks(mav, "all", "new", 6, OrderBy.P_DATE ,"new_book_list");
		mav.setViewName("/index0");
		return mav;
	}
	
	//커뮤니티 홈페이지 페이지 매핑
	@RequestMapping(value = "/community-index")
	public String communityindex() {
		return "/community-index";
	}
	
	//커뮤니티 홈페이지 페이지 매핑
	@RequestMapping(value = "/contact")
	public String contact() {
		return "/contact";
	}


	
	
}
