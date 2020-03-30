package book.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import book.bean.AdminBookListPaging;
import book.bean.BookDTO;
import book.service.BookAdminService;


@Controller
@RequestMapping(value="admin")
public class BookAdminController {
	@Autowired
	private BookAdminService bookAdminService;
	
	@RequestMapping(value="admin_booklist", method=RequestMethod.GET)
	public String imageboardList(@RequestParam(required=false, defaultValue="1") String pg,
								 Model model) {
		model.addAttribute("pg", pg);
		return "/admin/admin_booklist";
	}
	
	@RequestMapping(value="getadmin_booklist", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getImageboardList(@RequestParam(required=false, defaultValue="1") String pg) {
		List<BookDTO> list = bookAdminService.getAdminBookList(pg);
		
		AdminBookListPaging adminBookListPaging = bookAdminService.adminBookListPaging(pg);
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.addObject("list", list);
		mav.addObject("adminBookListPaging", adminBookListPaging);
		mav.setViewName("jsonView");
		return mav;
	}

}
