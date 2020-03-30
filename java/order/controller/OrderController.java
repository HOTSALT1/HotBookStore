package order.controller;

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
	
	@ResponseBody
	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public String addCheckout(@RequestBody List<Map<String, String>> list) {
		System.out.println("checkout" + list);
		orderService.addCheckout(list);
		return "ongoing checkout";
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
		return orderService.verify(model, receipt_id);
	}
	
}
