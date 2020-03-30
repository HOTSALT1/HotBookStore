package order.bean;

import java.util.Date;

import lombok.Data;

@Data
public class ViewCartDTO {
	private String cart_id;
	private String user_id;
	private int book_id;
	private int qty;
	private Date logtime;
	private String title;
	private int price;
	private int d_price;
	private String cate1;
	private String cate2;
}
