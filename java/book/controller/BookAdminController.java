package book.controller;

import java.util.List;
import java.util.Map;

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
@RequestMapping(value = "admin")
public class BookAdminController {
	@Autowired
	private BookAdminService bookAdminService;

	@RequestMapping(value = "admin_booklist", method = RequestMethod.GET)
	public ModelAndView admin_booklist(@RequestParam(required = false, defaultValue = "1") String pg) {
		List<BookDTO> list = bookAdminService.getAdminBookList(pg);
		AdminBookListPaging adminBookListPaging = bookAdminService.adminBookListPaging(pg);
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.addObject("list", list);
		mav.addObject("adminBookListPaging", adminBookListPaging);
		mav.setViewName("/admin/admin_booklist");
		return mav;
	}
	
	@RequestMapping(value = "admin_bookModifyForm", method = RequestMethod.GET)
	public ModelAndView admin_bookModifyForm(ModelAndView mav) {
		mav.setViewName("/admin/admin_bookModifyForm");
		return mav;
	}
	
	//책정보 수정
	@RequestMapping(value="admin_bookModify", method=RequestMethod.POST)
	public @ResponseBody void admin_bookModify(@RequestParam Map<String,String> map) {
		bookAdminService.bookModify(map);
	}


}
