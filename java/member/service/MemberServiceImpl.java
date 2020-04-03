package member.service;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;
import member.dao.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private HttpSession session;


	@Override
	public ModelAndView signup(Map<String, String> map, ModelAndView mav,BCryptPasswordEncoder pwdEncoder) {
		String inputPass = map.get("pwd");
		String pwd = pwdEncoder.encode(inputPass);
		map.put("pwd",pwd);
		if(e_verify_chk(map.get("key"), map.get("email")).equals("true")) {
			System.out.println("이메일 인증 성공");
			memberDAO.signup(map);
			memberDAO.welcomePoint(map.get("id"));
			mav.addObject("name", map.get("name"));
			mav.addObject("id", map.get("id"));
			mav.setViewName("jsonView");
			return mav;
			
		}else {
			mav.addObject("result", "false");
			mav.setViewName("jsonView");
			System.out.println("이메일 인증 실패");
			return mav;
		}
		
	}

	@Override
	public void e_verify(String email, JavaMailSender mailSender) {
		MailHandler sendMail;
		String key = key();
		try {
			sendMail = new MailHandler(mailSender);
			sendMail.setSubject("[이메일 인증]");
			sendMail.setText(new StringBuffer().append("<h1>메일인증</h1>")
					.append("HotBookStore(뜨거운책방)에 가입을 환영합니다.<br>다음 코드를 인증코드 입력란에 입력해주세요.<br>" + key ).toString());
			sendMail.setFrom("hothotbookstore@gmail.com", "뜨거운책방");
			sendMail.setTo(email);
			sendMail.send();
			session.setAttribute("key", key);
			session.setAttribute("email", email);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	@Override
	public String login(Map<String, String>map,BCryptPasswordEncoder pwdEncoder) {
		MemberDTO login = memberDAO.login(map);
		if(login==null) {
			return "fail";
		}		
		boolean pwdMath = pwdEncoder.matches(map.get("pwd"), login.getPwd());
		System.out.println(login);
//		System.out.println(memberDTO.getId());

		if(login !=null && pwdMath==true) {
			session.setAttribute("memId", login.getId());
			session.setAttribute("memName", login.getName());
			return login.getName();	
		}else {
			return "fail";
		}
	}

	@Override
	public String isExistId(String id) {
		MemberDTO memberDTO = memberDAO.isExistId(id);
		if(memberDTO!=null) {
			return "false";
		}else {
			return "true";
		}
	}

	@Override
	public String isExistEmail(String email) {
		MemberDTO memberDTO = memberDAO.isExistEmail(email);
		if(memberDTO!=null) {
			//몇번째 자리부터 별표로 표시 정규식
			String id =	memberDTO.getId().replaceAll("(?<=.{3})." , "*");
			return id;
		}else {
			return "false";
		}
	}
	//회원정보 비밀번호 체크
	@Override
	public ModelAndView mypage_pwd_chk(Map<String, String> map, ModelAndView mav, BCryptPasswordEncoder pwdEncoder) {
		MemberDTO login = memberDAO.login(map);
		//보험
		if(login==null) {
			mav.addObject("loginResult", "비밀번호가 일치하지 않습니다.");
			mav.setViewName("mypage_pwd_chk");
		}		
		boolean pwdMath = pwdEncoder.matches(map.get("pwd"), login.getPwd());
		System.out.println(login);
//		System.out.println(memberDTO.getId());
		
		//회원정보 비밀번호가 일치하면 member_modifyForm으로
		if(login !=null && pwdMath==true) {
			mav.addObject("memberDTO", login);
			mav.setViewName("member_modifyForm");
		}else {
			mav.addObject("loginResult", "비밀번호가 일치하지 않습니다.");
			mav.setViewName("mypage_pwd_chk");
		}
		return mav;	
	}

//	//회원정보 수정
//	@Override
//	public String member_modify(MemberDTO memberDTO, BCryptPasswordEncoder pwdEncoder) {
//		String inputPass = memberDTO.getPwd();
//		String pwd = pwdEncoder.encode(inputPass);
//		
//		memberDTO.setPwd(pwd);
//		memberDAO.member_modify(memberDTO);
//		
//		return "succes";
//	}
	//회원수정
	@Override
	public String member_modify(Map<String, String> map, BCryptPasswordEncoder pwdEncoder) {
		String inputPass = map.get("pwd");
		String pwd = pwdEncoder.encode(inputPass);
		//session.invalidate();
		map.put("pwd",pwd);
		memberDAO.member_modify(map);	
		
		return "succes";

	}
	//회원삭제
	@Override
	public String member_delete(Map<String, String> map, BCryptPasswordEncoder pwdEncoder) {
		System.out.println(map);
		if(isPwdMatch(map, pwdEncoder)) {
			session.invalidate();
			memberDAO.member_delete(map);			
			return "succes";
			
		}else
			return "fail";
	}
	
	//비밀번호 매치
	public boolean isPwdMatch(Map<String, String>map, BCryptPasswordEncoder pwdEncoder) {
		String inputPass = map.get("pwd");
		String pwd = pwdEncoder.encode(inputPass);
		
		MemberDTO memberDTO = memberDAO.login(map);
		boolean pwdMath = pwdEncoder.matches(map.get("pwd"), memberDTO.getPwd());
		
		return (memberDTO !=null && pwdMath==true);
	}
	//난수
	public String key() {
		StringBuffer buffer = new StringBuffer();
		for(int i=0; i<=6; i++) {
			int n =(int)(Math.random()*10);
			buffer.append(n);
		}
		return buffer.toString();
	}
	//관리자 회원목록
	@Override
	public ModelAndView member_list(ModelAndView mav) {
		List<MemberDTO> list = memberDAO.member_list();
		mav.addObject("list", list);
		mav.setViewName("/admin/admin_member_list");
		return mav;
	}

	@Override
	public String e_verify_chk(String e_verify, String email) {
		if(session.getAttribute("key").equals(e_verify)&&session.getAttribute("email").equals(email)) {
			return "true";	
		}
		return "fail";

	}

	@Override
	public ModelAndView member_findPwd(Map<String, String> map, ModelAndView mav) {
		MemberDTO memberDTO = memberDAO.member_findPwd(map);
		System.out.println(map);
		System.out.println(memberDTO);
		if(memberDTO==null) {
			mav.addObject("result","false");
			mav.setViewName("jsonView");
		}else {
			mav.addObject("id", map.get("id"));
			mav.addObject("email", map.get("email"));
			mav.setViewName("jsonView");
		}
		return mav;	
	}

	
	public String member_modifyPwd(Map<String, String> map, BCryptPasswordEncoder pwdEncoder) {
		String inputPass = map.get("pwd");
		String pwd = pwdEncoder.encode(inputPass);
		//session.invalidate();
		map.put("pwd",pwd);
		memberDAO.member_modifyPwd(map);	
		
		return "succes";

	}
	
}










