package order.bean;

import java.util.Date;

import lombok.Data;

@Data
public class OrderDTO {
	private String order_id;
	private String user_id;
	private String buyer;
	private String receiver;
	private int price;
	private int point;
	private int usedPoint;
	private String addr_new;
	private String addr_old;
	private String addr_detail;
	private String zipcode;
	private String tel;
	private String r_tel1;
	private String r_tel2;
	private String delivery_msg;
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
