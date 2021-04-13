package com.davi.app.member.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.davi.app.member.vo.DaviMemberVO;
import com.davi.mybatis.config.SqlMapConfig;


public class MemberDAO {
	
	private static final int KEY = 5;
	
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public MemberDAO() {
		session = sessionf.openSession(true);
		
	}
	
	//아이디 찾기
	
	public boolean checkFindId (String name, String email) {
		HashMap<String, String> member = new HashMap<>();
		
		member.put("name", name);
		member.put("email", email);
		
		return (Integer)session.selectOne("Member.checkFindId", member) == 1;
	}
	
	public String findId (String name, String email) {
		HashMap<String, String> member = new HashMap<>();
		
		member.put("name", name);
		member.put("email", email);
		
		return session.selectOne("Member.findId", member);
	}
	
	//로그인 
	public boolean login(String id,String pw) {
		HashMap<String, String> member = new HashMap<String, String>();
		member.put("id", id);
		member.put("pw",encrypt(pw));
		
		return (Integer)session.selectOne("Member.login", member)==1;
	}
	
	//회원가입
	public boolean join(DaviMemberVO mvo) {
		mvo.setMemberPw(encrypt(mvo.getMemberPw()));
		return session.insert("Member.join", mvo) == 1;
	}
	
	//아이디 중복 체크
	public boolean checkId(String memberId) {
		return (Integer)session.selectOne("Member.checkId", memberId)==1;
	}
	
	//암호화
	public String encrypt(String pw) {
		String en_pw = "";
		for (int i = 0; i < pw.length(); i++) {
			en_pw += (char)(pw.charAt(i) * KEY);
		}
		return en_pw;
	}
	
	//복호화
	public String decrypt(String en_pw) {
		String de_pw = "";
		for (int i = 0; i < en_pw.length(); i++) {
			de_pw += (char)(en_pw.charAt(i) / KEY);
		}
		return de_pw;
	}
	
	// 비밀번호 찾기
	public boolean findPw (String id, String email) {
		
		HashMap<String, String> map = new HashMap<>();
		map.put("id",id);
		map.put("email",email);
		
		return (Integer)session.selectOne("Member.findPw", map) == 1;
	}
	
	// 비밀번호 변경
	public boolean changePw (String new_pw, String email) {
		
		HashMap<String, String> map = new HashMap<>();
		String en_pw = encrypt(new_pw);
		map.put("pw", en_pw);
		map.put("email", email);
		
		return session.update("Member.changePw", map) == 1;
	}
	
	
}














