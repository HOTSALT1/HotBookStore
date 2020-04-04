package review.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import review.bean.ReviewDTO;

@Repository
@Transactional
public class ReviewDAOMybatis implements ReviewDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<ReviewDTO> getReviewList(Map<String, Integer> map) {
		return sqlSession.selectList("reviewSQL.getReviewList", map);
	}

	@Override
	public int getReviewTotalA() {
		return sqlSession.selectOne("reviewSQL.getReviewTotalA");
	}

	@Override
	public void reviewWrite(Map<String, String> map) {
		sqlSession.insert("reviewSQL.reviewWrite", map);
		
	}

	@Override
	public ReviewDTO getReviewView(int review_seq) {
		return sqlSession.selectOne("reviewSQL.getReviewView", review_seq);
	}

	@Override
	public List<ReviewDTO> getBookReviewList(String book_id) {
		return sqlSession.selectList("reviewSQL.getBookReviewList", book_id);
	}

}
