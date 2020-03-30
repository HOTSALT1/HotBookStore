package book.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import book.bean.BookDTO;
import book.service.BookService;

@Controller
public class BookController {
	@Autowired
	private BookService bookService;
	
	
	@RequestMapping(value="single-product", method=RequestMethod.GET)
	public ModelAndView singleProductView(@RequestParam String book_id) {	
		
		BookDTO bookDTO= bookService.getBook(book_id);
		System.out.println(book_id+","+bookDTO.getTitle());
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("book", bookDTO);
		mav.setViewName("/single-product");
		return mav;		
	}
	
	

}
