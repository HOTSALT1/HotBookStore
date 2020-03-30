package member.dao;

import java.util.Map;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;

public interface MemberDAO {

	public void signup(MemberDTO memberDTO);

	public MemberDTO login(Map<String, String> map);

	public MemberDTO isExistId(String id);

	public MemberDTO isExistEmail(String email);
	
	public ModelAndView mypage_pwd_chk(Map<String, String> map, ModelAndView mav, BCryptPasswordEncoder pwdEncoder);
	
	public void member_modify(Map<String, String> map);

	public void member_delete(Map<String, String> map);

}
