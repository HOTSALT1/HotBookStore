package order.bean;

import java.util.Date;

import lombok.Data;

@Data
public class OrderDTO {
	private String order_id;
	private String user_id;
	private int price;
	private String name;
	private String pg_name;
	private String method;
	private String method_name;
	private String status;
	private String receipt_id;
	private String payment_data;
	private String note;
	private String tax_ref;
	private Date logtime;
}
