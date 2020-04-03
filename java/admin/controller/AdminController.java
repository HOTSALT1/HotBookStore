
package admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import book.service.BookAdminService;

@Controller
@RequestMapping(value = "admin")
public class AdminController {
	@Autowired
	BookAdminService bookAdminService;

	// admin 홈페이지 페이지 매핑
	@RequestMapping(value = "/admin_index")
	public String admin_index() {
		return "/admin/admin_index";
	}
	

}
