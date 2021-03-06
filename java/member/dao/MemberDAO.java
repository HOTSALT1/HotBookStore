package member.dao;

import java.util.List;
import java.util.Map;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;

public interface MemberDAO {

	public void signup(Map<String, String> map);

	public MemberDTO login(Map<String, String> map);

	public MemberDTO isExistId(String id);

	public MemberDTO isExistEmail(String email);
	
	public ModelAndView mypage_pwd_chk(Map<String, String> map, ModelAndView mav, BCryptPasswordEncoder pwdEncoder);
	
	public void member_modify(Map<String, String> map);

	public void member_delete(Map<String, String> map);

	public List<MemberDTO> member_list(Map<String, Integer> map);

	public MemberDTO member_findPwd(Map<String, String> map);

	public void member_modifyPwd(Map<String, String> map);

	public void welcomePoint(String id);

	public int member_list_count();



}
