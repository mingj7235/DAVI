package com.davi.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.member.dao.MemberDAO;

public class MemberMypageChangePwOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		
		MemberDAO m_dao = new MemberDAO();
		String memberId = req.getParameter("memberId");
		String memberPw = req.getParameter("memberPw");
		String newPw = req.getParameter("newPw");
		String path = "";
		
		
		if (m_dao.mypageChangePwCheck(memberPw, memberId)) {
			//기존 비밀번호와 일치
			System.out.println("들어옴");
			System.out.println(memberId);
			System.out.println(memberPw);
			System.out.println(newPw);
			if(m_dao.mypageChangePw(newPw, memberId)) {
				//비밀번호 변경완료
				path = "true";
			}else {
				//비밀번호 변경실패 (서버문제등)
				path = "false";
			}
		}else {
			//기존 비밀번호 불일치
				path = "fail";
		}
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/app/member/mypage.jsp?check="+path);
		
		return forward;
	}
}
