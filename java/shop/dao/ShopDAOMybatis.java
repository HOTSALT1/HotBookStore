package shop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import book.bean.BookDTO;
import book.bean.BookDTO_list;
import order.bean.CartDTO;

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
	
}
