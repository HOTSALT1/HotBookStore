package shop.dao;

import java.util.List;
import java.util.Map;

import book.bean.BookDTO;
import book.bean.BookDTO_list;
import order.bean.CartDTO;
import shop.bean.WishlistDTO;

public interface ShopDAO {

	public List<BookDTO_list> getBooks(Map<String, Object> map);

	public BookDTO getBook(int book_id);
	
	public List<BookDTO> getBooksByCart(List<CartDTO> list);
	
	public int getBoardTotalA(Map<String, Object> map);

	public List<WishlistDTO> getWishlist(String user_id);

	public int getWishlist(Map<String, String> map);

	public void addWishlist(Map<String, String> map);

	public void removeFromWishlist(Map<String, String> map);
	
}
