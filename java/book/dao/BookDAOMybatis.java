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

	//책 평점 가져오기
	@Override
	public int getScore(String book_id) {
		Integer score =  sqlSession.selectOne("bookSQL.getScore", book_id);
		if(score != null)
			return score;
		else return 0;
	}

}
