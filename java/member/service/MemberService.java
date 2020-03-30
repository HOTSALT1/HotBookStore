package member.service;

import java.util.Map;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;

public interface MemberService {

	public ModelAndView signup(MemberDTO memberDTO, ModelAndView mav,BCryptPasswordEncoder pwdEncoder);

	public String login(Map<String, String>map,BCryptPasswordEncoder pwdEncoder);

	public String isExistId(String id);

	public String isExistEmail(String email);

	public ModelAndView mypage_pwd_chk(Map<String, String> map, ModelAndView mav, BCryptPasswordEncoder pwdEncoder);

	//public String member_modify(MemberDTO memberDTO, BCryptPasswordEncoder pwdEncoder);
	
	public String member_modify(Map<String, String>map, BCryptPasswordEncoder pwdEncoder);
	public String member_delete(Map<String, String> map, BCryptPasswordEncoder pwdEncoder);


}
