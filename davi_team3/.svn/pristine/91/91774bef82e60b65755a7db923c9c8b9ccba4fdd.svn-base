package com.davi.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.member.dao.MemberDAO;
import com.davi.app.member.vo.DaviMemberVO;

public class MemberMypageUpdateStatusOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward(); 
		
		MemberDAO m_dao = new MemberDAO();
		DaviMemberVO m_vo = new DaviMemberVO();
		
		String result = null;
		
		m_vo.setMemberId(req.getParameter("memberId"));
		m_vo.setMemberPhone(req.getParameter("memberPhone"));
		m_vo.setMemberEmail(req.getParameter("memberEmail"));
		m_vo.setMemberHeight(Integer.parseInt(req.getParameter("memberHeight")));
		m_vo.setMemberWeight(Integer.parseInt(req.getParameter("memberWeight")));
		m_vo.setMemberGoalWeight(Integer.parseInt(req.getParameter("memberGoalWeight")));
		m_vo.setMemberResolution(req.getParameter("memberResolution"));		
		
		if(m_dao.mypageUpdateStatus(m_vo)) {
			//수정 성공
			System.out.println("성공");
			result = "true";
		}else {
			//수정 실패
			System.out.println("실패");
			result = "false";			
		}
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/app/member/mypage.jsp?result=" + result);
		
		return forward;
	}

}
