package book.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import book.bean.BookDTO;
import book.dao.BookDAO;

@Service
public class BookServiceImpl implements BookService {
	@Autowired
	private BookDAO bookDAO;
	
	@Override
	public BookDTO getBook(String book_id) {
		return bookDAO.getBook(book_id);
	}

}
