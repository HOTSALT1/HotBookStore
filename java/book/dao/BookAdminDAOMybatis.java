package book.dao;

import java.util.List;
import java.util.Map;

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

	@Override
	public List<BookDTO> getAdminBookList(Map<String, Integer> map) {
		return sqlSession.selectList("bookSQL.getAdminBookList", map);
	}

	@Override
	public int getBookListTotalA() {
		return sqlSession.selectOne("bookSQL.getBookListTotalA");
	}

	@Override
	public void bookModify(Map<String, String> map) {
		sqlSession.update("bookSQL.bookModify", map);		
	}

}
