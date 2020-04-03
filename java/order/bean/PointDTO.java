package order.bean;

import java.util.Date;

import lombok.Data;

@Data
public class PointDTO {
	private String user_id;
	private int point;
	private String note;
	private String order_id;
	private Date logtime;
}
