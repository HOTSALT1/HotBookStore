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

	@RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
	public ModelAndView index1(ModelAndView mav) {
		orderService.loadCart(mav);
		shopService.getDPBooks(mav, "all", "new", 6, OrderBy.P_DATE ,"new_book_list");
		shopService.getDPBooks(mav, "all", "best", 12, OrderBy.SCORE, "best_book_list");
		shopService.getDPBooks(mav, "all", "new", 6, OrderBy.P_DATE, "new_book_list");
		shopService.getDPBooks(mav, "all", "all", 10, OrderBy.SCORE, "list_DP_all");
		shopService.getDPBooks(mav, "인문", "all", 10, OrderBy.SCORE, "list_DP_01");
		shopService.getDPBooks(mav, "자기계발", "all", 10, OrderBy.SCORE, "list_DP_02");
		shopService.getDPBooks(mav, "소설/시/희곡", "all", 10, OrderBy.SCORE, "list_DP_03");
		shopService.getDPBooks(mav, "경제 경영", "all", 10, OrderBy.SCORE, "list_DP_04");
		
		mav.setViewName("/index0");
		return mav;
	}

	// 커뮤니티 홈페이지 페이지 매핑
	@RequestMapping(value = "/community-index")
	public ModelAndView communityindex(ModelAndView mav) {
		orderService.loadCart(mav);
		mav.setViewName("/community-index");
		return mav;
	}

	// 컨텍트 페이지 매핑
	@RequestMapping(value = "/about")
	public ModelAndView about(ModelAndView mav) {
		orderService.loadCart(mav);
		mav.setViewName("/about");
		return mav;
	}
	
	@RequestMapping(value = "/contact")
	public ModelAndView contact(ModelAndView mav) {
		orderService.loadCart(mav);
		mav.setViewName("/contact");
		return mav;
	}

	@RequestMapping(value = "/faq")
	public ModelAndView faq(ModelAndView mav) {
		orderService.loadCart(mav);
		mav.setViewName("/faq");
		return mav;
	}


}
