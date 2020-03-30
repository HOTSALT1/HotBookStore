package member.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class MemberDTO {
	private String name;
	private Date birth;
	private String gender;
	private String id;
	private String pwd;
	private String email;
	private String tel; 
	private String zipcode;
	private String addr1;
	private String addr2;
	private String addr3;
	private int point;

	@Override
	public String toString() {
		return "이름: " + name  + "\t 생일: "+birth+"\t 성별"+gender+"id:" +id+"비밀번호"+pwd+"이메일"+email
				+"전화번호1"+tel;
		
	}
}








