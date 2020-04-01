package shop.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.servlet.ModelAndView;

import book.bean.BookDTO_list;
import shop.bean.OrderBy;

public interface ShopService {

	public List<BookDTO_list> getBookList(String pg);
	
	public ModelAndView getBooks(ModelAndView mav, Map<String, Object> map);
	
	public ModelAndView getDPBooks(ModelAndView mav, String cate2, int count, OrderBy orderBy, String list_name);

}
