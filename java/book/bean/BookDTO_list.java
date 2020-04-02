package book.bean;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Setter
@Getter
@Component
@Scope(value = "prototype")
public class BookDTO_list {
	private int rn;
	private int seq;
	private String title;
	private String subTitle;
	private String cate1;
	private String cate2;
	private String author;
	private String pub;
	private int price;
	private int d_price;
	private String p_date;
	private String book_size;
	private String info;
	private String img1;
	private String img2;
	private int stock;
	private int count;
	private double score;
}
