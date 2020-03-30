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
public class BookDTO {
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
	private String book_index;
	private String page;
	private String weight;
	private String book_size;
	private String detail; 
	private String isbn13;
	private String isbn10;
	private String info;
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	private String img6;
	private String img7;
	private String yesNum;
	private String logtime;

	
	public BookDTO() {
	}

}
