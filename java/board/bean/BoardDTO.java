package board.bean;

import java.util.Date;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class BoardDTO {
	private int board_seq;
	private String memId;
	private String board_title;
	private String board_content;
	private String board_category;
	private String board_image1;
	private String board_image2;
	private String board_image3;
	
	//@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy.MM.dd")
	private Date board_logtime;
	
	private int board_hit;
	private int board_like;

//	private int ref;
//	private int lev;
//	private int step;
//	private int pseq;
//	private int reply;
}










