package shop.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.servlet.ModelAndView;

import book.bean.BookDTO;

public interface ShopService {

	public List<BookDTO> getBookList(String pg);
	
	public ModelAndView getBooks(ModelAndView mav, Map<String, Object> map);

}
