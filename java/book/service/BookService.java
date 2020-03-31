package book.service;

import book.bean.BookDTO;

public interface BookService {

	public BookDTO getBook(String book_id);

	public int getScore(String book_id);

}
