package book.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import book.bean.BookDTO;

@Repository
@Transactional
public class BookDAOMybatis implements BookDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public BookDTO getBook(String book_id) {
		return sqlSession.selectOne("bookSQL.getBook", Integer.parseInt(book_id));
	}

}
