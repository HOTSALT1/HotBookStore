package member.controller;

import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;
import member.service.MemberService;

@Controller
@RequestMapping
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	@Autowired
	HttpSession session;
	//페이지로딩
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public ModelAndView loginForm(ModelAndView mav) {
		mav.setViewName("/loginForm");
		return mav;
	}
	@RequestMapping(value = "/signup_agreement", method = RequestMethod.GET)
	public ModelAndView signup_agreement(ModelAndView mav) {
		mav.setViewName("/signup_agreement");
		return mav;
	}
	@RequestMapping(value = "/member_modifyForm", method = RequestMethod.GET)
	public ModelAndView member_modifyForm(ModelAndView mav) {
		mav.setViewName("/member_modifyForm");
		return mav;
	}
	
	//회원가입
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public ModelAndView signup(@ModelAttribute MemberDTO memberDTO,ModelAndView mav) {
		return memberService.signup(memberDTO, mav, pwdEncoder);
	}
	
	//회원가입 아이디체크
	@RequestMapping(value="checkId", method=RequestMethod.POST)
	public @ResponseBody String checkId(@RequestParam String id) {
		return memberService.isExistId(id);
	}
	
	//회원가입 이메일체크
	@RequestMapping(value="checkEmail", method=RequestMethod.POST)
	public @ResponseBody String checkEmail(@RequestParam String email) {
		return memberService.isExistEmail(email);
	}
	
	//회원가입완료
	@RequestMapping(value="signup_complete", method=RequestMethod.GET)
	public ModelAndView signup_complete(@RequestParam String id, @RequestParam String name, ModelAndView mav) {
		mav.addObject("name", name);
		mav.addObject("id", id);
		return mav;
	}	
	//로그인
	//@SuppressWarnings("unused")
	@RequestMapping(value="login", method=RequestMethod.POST, produces = "application/text; charset=utf8")
	public @ResponseBody String login(@RequestParam Map<String,String>map) {
		return memberService.login(map, pwdEncoder);
	}
	
	//로그아웃
	@RequestMapping(value="logout", method=RequestMethod.GET)
	@ResponseBody
	public void logout() {
		session.invalidate();
	}
	//비밀번호 재확인
	@RequestMapping(value="mypage_pwd_chk", method=RequestMethod.POST)
	public @ResponseBody ModelAndView mypage_pwd_chk(@RequestParam Map<String,String>map, ModelAndView mav) {
		return memberService.mypage_pwd_chk(map, mav,pwdEncoder);
	}
//	//회원정보 수정
//	@RequestMapping(value="member_modify", method=RequestMethod.POST)
//	public @ResponseBody String member_modify(@ModelAttribute MemberDTO memberDTO) {
//		return memberService.member_modify(memberDTO,pwdEncoder);
//	}
	//회원정보 수정
	@RequestMapping(value="member_modify", method=RequestMethod.POST)
	public @ResponseBody String member_modify(@RequestParam Map<String,String> map) {
		return memberService.member_modify(map,pwdEncoder);
	}
	
	//회원정보 삭제
	@RequestMapping(value="member_delete", method=RequestMethod.POST)
	public @ResponseBody String member_delete(@RequestParam Map<String,String> map) {
		return memberService.member_delete(map,pwdEncoder);
	}
	
	@RequestMapping(value="/admin/admin_member_list", method=RequestMethod.GET)
	public ModelAndView member_list(ModelAndView mav) {
		return memberService.member_list(mav);
	}
			
	
}













