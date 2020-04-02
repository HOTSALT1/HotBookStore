package member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;

@Repository
@Transactional
public class MemberDAOMybatis implements MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void signup(Map<String,String>map) {
		sqlSession.insert("memberSQL.signup", map);
	}

	@Override
	public MemberDTO login(Map<String,String>map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.login",map);
	}

	@Override
	public MemberDTO isExistId(String id) {
		return sqlSession.selectOne("memberSQL.isExistId", id);
	}



	@Override
	public MemberDTO isExistEmail(String email) {
		return sqlSession.selectOne("memberSQL.isExistEmail", email);
	}




	@Override
	public ModelAndView mypage_pwd_chk(Map<String, String> map, ModelAndView mav, BCryptPasswordEncoder pwdEncoder) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.isExistEmail", map);
	}



//	@Override
//	public void member_modify(MemberDTO memberDTO) {
//		sqlSession.update("memberSQL.memberUpdate", memberDTO);
//	}
	
	@Override
	public void member_modify(Map<String, String> map) {
		sqlSession.update("memberSQL.memberUpdate", map);
	}
	
	//회원탈퇴
	@Override
	public void member_delete(Map<String, String> map) {
		sqlSession.update("memberSQL.memberDelete", map);
		
	}
	//관리자 
	@Override
	public List<MemberDTO> member_list() {
		return sqlSession.selectList("memberSQL.memberList");
	}

	@Override
	public void e_verify(String email) {
		sqlSession.update("memberSQL.e_verify", email);
	}

	@Override
	public MemberDTO member_findPwd(Map<String, String> map) {
		return sqlSession.selectOne("memberSQL.memberfindPwd",map);
		
	}

	@Override
	public void member_modifyPwd(Map<String, String> map) {
		sqlSession.update("memberSQL.membermodifyPwd", map);
		
	}








}













