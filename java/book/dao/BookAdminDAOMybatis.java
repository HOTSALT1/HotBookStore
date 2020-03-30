package book.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import book.bean.BookDTO;

@Repository
@Transactional
public class BookAdminDAOMybatis implements BookAdminDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertBook(BookDTO bookDTO) {
		sqlSession.insert("bookSQL.insertBook", bookDTO);
	}

}
