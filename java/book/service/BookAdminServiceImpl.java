package book.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
