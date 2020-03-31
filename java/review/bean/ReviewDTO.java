package review.bean;

import lombok.Data;

@Data
public class ReviewDTO {
	private int review_seq;
	private int book_id;
	private String memId;
	private String review_title;
	private String review_content;
	private String review_regdate;
	private int score;
	private String IMG1;
	private String review_quote;
}
