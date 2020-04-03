package review.dao;

import java.util.List;
import java.util.Map;

import review.bean.ReviewDTO;

public interface ReviewDAO {

	List<ReviewDTO> getReviewList(Map<String, Integer> map);

	int getReviewTotalA();

	void reviewWrite(Map<String, String> map);

	ReviewDTO getReviewView(int review_seq);

	List<ReviewDTO> getBookReviewList(String book_id);

}
