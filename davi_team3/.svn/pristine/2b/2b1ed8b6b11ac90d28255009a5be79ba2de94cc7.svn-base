package com.davi.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.member.dao.MemberDAO;
import com.davi.app.member.vo.DaviBodyVO;

public class MemberBodyInsertOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		
		MemberDAO m_dao = new MemberDAO();
		DaviBodyVO b_vo = new DaviBodyVO();
		HttpSession session = req.getSession();
		
		String memberId = (String)session.getAttribute("session_id");
		String bodyWeight = req.getParameter("bodyWeight");
		
		b_vo.setBodyWeight(Integer.parseInt(bodyWeight));
		b_vo.setMemberId(memberId);
		
		if(m_dao.insertBody(b_vo)) {
			System.out.println("성공");
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/member/reportView.me");
		}else {
			System.out.println("여기로 오지마");
			
		}
		
		return forward;
	}

}
