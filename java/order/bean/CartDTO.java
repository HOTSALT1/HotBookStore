package order.bean;

import lombok.Data;

@Data
public class CartDTO {
	private String cart_id;
	private String user_id;
	private int book_id;
	private int qty;
}
