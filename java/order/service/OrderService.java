package order.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.servlet.ModelAndView;

import book.bean.BookDTO;
import order.bean.ViewCartDTO;

public interface OrderService {

	public String addToCart(Map<String, String> map);

	public List<ViewCartDTO> getCart(String memId);
	
	public List<ViewCartDTO> getCartInCookies();

	public List<BookDTO> getBooksInCart(List<ViewCartDTO> cart_list);

	public String removeCart(String book_id);
	
	public ModelAndView loadCart(ModelAndView model);

	public void addCheckout(List<Map<String, String>> list);

	public ModelAndView verify(ModelAndView model, String receipt_id);
	
	public void checkoutDirect(List<Map<String, String>> list);

	public ModelAndView admin_order_list(ModelAndView model);

	public void addCheckout_all();

	public void loadOrder(ModelAndView model, Map<String, Object> map);

}
