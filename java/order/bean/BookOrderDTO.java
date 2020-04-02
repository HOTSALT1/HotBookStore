package order.bean;

import java.util.Date;

import lombok.Data;

@Data
public class BookOrderDTO {
	private String order_id;
	private String user_id;
	private int book_id;
	private String title;
	private int old_price;
	private int price;
	private int qty;
	private Date logtime;
}
