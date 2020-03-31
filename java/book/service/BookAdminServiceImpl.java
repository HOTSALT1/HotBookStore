package book.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import book.bean.AdminBookListPaging;
import book.bean.BookDTO;
import book.dao.BookAdminDAO;

@Service
public class BookAdminServiceImpl implements BookAdminService {
	@Autowired
	private BookAdminDAO bookAdminDAO;

	@Override
	public void insertBook(BookDTO bookDTO) {	
		bookAdminDAO.insertBook(bookDTO);
	}

	@Override
	public List<BookDTO> getAdminBookList(String pg) {
		int endNum = Integer.parseInt(pg)*12;
		int startNum = endNum-11;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		return bookAdminDAO.getAdminBookList(map);
	}

	@Override
	public AdminBookListPaging adminBookListPaging(String pg) {
		int totalA = bookAdminDAO.getBookListTotalA();
		return null;
	}

	@Override
	public void bookModify(Map<String, String> map) {
		bookAdminDAO.bookModify(map);		
	}

}
