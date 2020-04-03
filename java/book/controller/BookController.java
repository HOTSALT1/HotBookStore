package book.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import book.bean.BookDTO;
import book.service.BookService;
import order.service.OrderService;
import review.bean.ReviewDTO;
import review.bean.ReviewPaging;
import review.service.ReviewService;

@Controller
public class BookController {
	@Autowired
	private BookService bookService;
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value="single-product", method=RequestMethod.GET)
	public ModelAndView singleProductView(@RequestParam String book_id) {	
		
		BookDTO bookDTO= bookService.getBook(book_id);
		
		ModelAndView mav = new ModelAndView();
		orderService.loadCart(mav);
		mav.addObject("book", bookDTO);
		
		//책 평점 가져오기
		mav.addObject("score", bookService.getScore(book_id));
		
		//리뷰리스트
		List<ReviewDTO> list = reviewService.getBookReviewList(book_id);
		mav.addObject("reviewDTO", list);

		mav.setViewName("/single-product");
		return mav;		
	}
	
	

}
