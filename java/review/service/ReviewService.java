package review.service;

import java.util.List;
import java.util.Map;

import review.bean.ReviewDTO;
import review.bean.ReviewPaging;

public interface ReviewService {

	List<ReviewDTO> getReviewList(String pg);

	ReviewPaging reviewPaging(String pg);

	void reviewWrite(Map<String, String> map);

	ReviewDTO getReviewView(int review_seq);

}
