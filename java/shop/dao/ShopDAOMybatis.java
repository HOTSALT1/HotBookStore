package shop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import book.bean.BookDTO;
import book.bean.BookDTO_list;
import order.bean.CartDTO;
import shop.bean.WishlistDTO;

@Repository
public class ShopDAOMybatis implements ShopDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<BookDTO_list> getBooks(Map<String, Object> map) {
		return sqlSession.selectList("shopSQL.getBooks", map);
	}
	
	@Override
	public BookDTO getBook(int book_id) {
		return sqlSession.selectOne("shopSQL.getBook", book_id);
	}

	@Override
	public List<BookDTO> getBooksByCart(List<CartDTO> list) {
		return sqlSession.selectList("shopSQL.getBooksByCart", list);
	}
	
	@Override
	public int getBoardTotalA(Map<String, Object> map) {
		return sqlSession.selectOne("shopSQL.getBoardTotalA", map);
	}

	@Override
	public List<WishlistDTO> getWishlist(String user_id) {
		return sqlSession.selectList("shopSQL.getWishlist", user_id);
	}

	@Override
	public int getWishlist(Map<String, String> map) {
		return sqlSession.selectOne("shopSQL.getWishlistCount", map);
	}

	@Override
	public void addWishlist(Map<String, String> map) {
		sqlSession.insert("shopSQL.addWishlist", map);
	}

	@Override
	public void removeFromWishlist(Map<String, String> map) {
		sqlSession.delete("shopSQL.removeFromWishlist", map);
	}
	
}
