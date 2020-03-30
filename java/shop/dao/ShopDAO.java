package shop.dao;

import java.util.List;
import java.util.Map;

import book.bean.BookDTO;
import order.bean.CartDTO;

public interface ShopDAO {

	public List<BookDTO> getBooks(Map<String, Object> map);

	public BookDTO getBook(int book_id);
	
	public List<BookDTO> getBooksByCart(List<CartDTO> list);
	
	public int getBoardTotalA(Map<String, Object> map);
	
}
