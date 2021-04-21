package com.davi.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.member.dao.MemberDAO;
import com.davi.app.member.vo.DaviMemberVO;

public class MemberMypageUpdateAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		MemberDAO m_dao = new MemberDAO();
		DaviMemberVO m_vo = null;
		HttpSession session = req.getSession();
		
		String memberId = (String) session.getAttribute("session_id");
		try {
			m_vo = m_dao.getBeforeUpdateStatus(memberId);
		} catch (Exception e) {

		} 
		
		if (m_vo != null) {
			req.setAttribute("m_vo", m_vo);
		}
		
		forward.setRedirect(false);
		forward.setPath("/app/member/mypage_updateStatus.jsp");
		
		return forward;
	}
}
