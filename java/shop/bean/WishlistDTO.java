package shop.bean;

import lombok.Data;

@Data
public class WishlistDTO {
	private String user_id;
	private int book_id;
	private String img1;
	private String title;
	private String subTitle;
	private int price;
	private int d_price;
	private int stock;
}
