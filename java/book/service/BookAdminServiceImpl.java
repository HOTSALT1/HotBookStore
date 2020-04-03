package book.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import book.bean.AdminBookListPaging;
import book.bean.BookDTO;
import book.dao.BookAdminDAO;

@Service
public class BookAdminServiceImpl implements BookAdminService {
	@Autowired
	private BookAdminDAO bookAdminDAO;	
	@Autowired
	private AdminBookListPaging adminBookListPaging;

	@Override
	public void insertBook(BookDTO bookDTO) {	
		bookAdminDAO.insertBook(bookDTO);
	}

	@Override
	public List<BookDTO> getAdminBookList(String pg) {
		int endNum = Integer.parseInt(pg)*12;
		int startNum = endNum-11;
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startNum", startNum+"");
		map.put("endNum", endNum+"");
		
		return bookAdminDAO.getAdminBookList(map);
	}

	@Override
	public AdminBookListPaging adminBookListPaging(String pg) {
		int totalA = bookAdminDAO.getBookListTotalA();
		
		adminBookListPaging.setCurrentPage(Integer.parseInt(pg));
		adminBookListPaging.setPageBlock(10);
		adminBookListPaging.setPageSize(5);
		adminBookListPaging.setTotalA(totalA);
		adminBookListPaging.makePagingHTML();
		
		return adminBookListPaging;
	}

	@Override
	public void bookModify(Map<String, String> map) {
		bookAdminDAO.bookModify(map);		
	}

	@Override
	public void admin_bookDelete(String[] check) {
		Map<String, String[]> map = new HashMap<String, String[]>();
		map.put("array", check);
		bookAdminDAO.admin_bookDelete(map);
	}

}
