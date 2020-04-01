package member.service;

import java.util.Map;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.servlet.ModelAndView;

public interface MemberService {

	public ModelAndView signup(Map<String, String> map, ModelAndView mav, BCryptPasswordEncoder pwdEncoder);

	public String login(Map<String, String>map,BCryptPasswordEncoder pwdEncoder);

	public String isExistId(String id);

	public String isExistEmail(String email);

	public ModelAndView mypage_pwd_chk(Map<String, String> map, ModelAndView mav, BCryptPasswordEncoder pwdEncoder);

	//public String member_modify(MemberDTO memberDTO, BCryptPasswordEncoder pwdEncoder);
	
	public String member_modify(Map<String, String>map, BCryptPasswordEncoder pwdEncoder);
	
	public String member_delete(Map<String, String> map, BCryptPasswordEncoder pwdEncoder);

	public ModelAndView member_list(ModelAndView mav);

	public void e_verify(String email, JavaMailSender mailSender);

	public String e_verify_chk(String e_verify);

	public ModelAndView member_findPwd(Map<String, String> map, ModelAndView mav);

	public String member_modifyPwd(Map<String, String> map, BCryptPasswordEncoder pwdEncoder);



	





}
