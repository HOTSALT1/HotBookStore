package book.dao;

import book.bean.BookDTO;

public interface BookDAO {

	public BookDTO getBook(String book_id);

	public int getScore(String book_id);

}
