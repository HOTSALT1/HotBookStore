package book.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import book.bean.BookDTO;
import book.service.BookService;
import order.service.OrderService;

@Controller
public class BookController {
	@Autowired
	private BookService bookService;
	
	@Autowired
	private OrderService orderService;
	
	
	@RequestMapping(value="single-product", method=RequestMethod.GET)
	public ModelAndView singleProductView(@RequestParam String book_id) {	
		
		BookDTO bookDTO= bookService.getBook(book_id);
		
		ModelAndView mav = new ModelAndView();
		orderService.loadCart(mav);
		mav.addObject("book", bookDTO);
		
		//책 평점 가져오기
		mav.addObject("score", bookService.getScore(book_id));
		
		mav.setViewName("/single-product");
		return mav;		
	}
	
	

}
