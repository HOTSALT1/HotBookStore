package order.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import order.service.OrderService;

@Controller
public class OrderController {
	@Autowired
	HttpSession session;
	
	@Autowired
	private OrderService orderService;

	
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public ModelAndView checkout(ModelAndView model) {
		orderService.loadCart(model);
		model.setViewName("/checkout");
		return model;
	}
	
	@RequestMapping(value = "/checkout_all", method = RequestMethod.GET)
	public ModelAndView checkout_all(ModelAndView model) {
		orderService.loadCart(model);
		orderService.addCheckout_all();
		model.setViewName("/checkout");
		return model;
	}
	
	@ResponseBody
	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public String addCheckout(@RequestBody List<Map<String, String>> list) {
		System.out.println("checkout" + list);
		orderService.addCheckout(list);
		return "ongoing checkout";
	}
	
	@ResponseBody
	@RequestMapping(value = "/order-info", method = RequestMethod.POST)
	public String tax_ref(@RequestParam Map<String, Object> map) {
		session.setAttribute("order_info", map);
		System.out.println(map);
		return "true";
	}
	
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public ModelAndView cart(ModelAndView model) {
		orderService.loadCart(model);
		model.setViewName("/cart");
		return model;
	}
	
	@ResponseBody
	@RequestMapping(value = "/cart", method = RequestMethod.POST)
	public String addToCart(@RequestParam Map<String, String> map) {
		System.out.println("addToCart" + map);
		return orderService.addToCart(map);
	}
	
	@ResponseBody
	@RequestMapping(value = "/cart/{book_id}", method = RequestMethod.DELETE)
	public String removeFromCart(@PathVariable String book_id) {
		System.out.println("removeFromCart - book_id: " + book_id);
		return orderService.removeCart(book_id);
	}
	
	@RequestMapping(value = "/verify/{receipt_id}", method = RequestMethod.GET)
	public ModelAndView verify(ModelAndView model, @PathVariable String receipt_id) {
		orderService.verify(model, receipt_id);
		orderService.loadCart(model);
		return model;
	}
	
	@ResponseBody
	@RequestMapping(value = "/buy", method = RequestMethod.POST)
	public String buy(@RequestBody List<Map<String, String>> list) {
		System.out.println("buy" + list);
		
		orderService.addToCart(list.get(0));
		orderService.addCheckout(list);
		return "ongoing checkout";
	}
	
	// 주문내역
	@RequestMapping(value = "/orderHistory", method = RequestMethod.GET)
	public ModelAndView orderHistory(ModelAndView model, @RequestParam(required = false) Map<String, Object> map) {
		orderService.loadCart(model);
		orderService.loadOrder(model, map);
		model.setViewName("/orderHistory");
		return model;
	}
	
	// 상세주문내역
	@RequestMapping(value = "/orderHistoryDetail/{order_id}", method = RequestMethod.GET)
	public ModelAndView orderHistoryDetail(ModelAndView model, @PathVariable String order_id) {
		orderService.loadCart(model);
		orderService.loadOrder(model, order_id);
		model.setViewName("/orderHistoryDetail");
		return model;
	}
	
	// 적립금 내역
	@RequestMapping(value = "/member_point", method = RequestMethod.GET)
	public ModelAndView member_point(ModelAndView model, @RequestParam(required = false, defaultValue = "1") int pg) {
		orderService.loadCart(model);
		orderService.loadPoint(model, pg);
		model.setViewName("/member_point");
		return model;
	}
	
	// -------------- 관리자 페이지용 -------------- 
	@RequestMapping(value = "/admin_order-list", method = RequestMethod.GET)
	public ModelAndView admin_order_list(ModelAndView model) {
		return orderService.admin_order_list(model);
	}
}
