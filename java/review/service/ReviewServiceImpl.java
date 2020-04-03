package review.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import review.bean.ReviewDTO;
import review.bean.ReviewPaging;
import review.dao.ReviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDAO reviewDAO;
	@Autowired
	private ReviewPaging reviewPaging;
	@Autowired
	private HttpSession session;
	
	@Override
	public List<ReviewDTO> getReviewList(String pg) {
		//1페이지당 3개씩
		int endNum = Integer.parseInt(pg)*3;
		int startNum = endNum-2;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		return reviewDAO.getReviewList(map);
	}
	
	@Override
	public List<ReviewDTO> getBookReviewList(String book_id) {
		return reviewDAO.getBookReviewList(book_id);
	}

	@Override
	public ReviewPaging reviewPaging(String pg) {
		int totalA = reviewDAO.getReviewTotalA();
		
		reviewPaging.setCurrentPage(Integer.parseInt(pg));
		reviewPaging.setPageBlock(3);
		reviewPaging.setPageSize(3);
		reviewPaging.setTotalA(totalA);
		reviewPaging.makePagingHTML();
		
		return reviewPaging;
	}

	@Override
	public void reviewWrite(Map<String, String> map) {
		map.put("id", (String)session.getAttribute("memId"));
		map.put("name", (String)session.getAttribute("memName"));
		map.put("email", (String)session.getAttribute("memEmail"));
		
		reviewDAO.reviewWrite(map);
	}

	@Override
	public ReviewDTO getReviewView(int review_seq) {
		return reviewDAO.getReviewView(review_seq);
	}

}
