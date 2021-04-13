package com.davi.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.member.dao.MemberDAO;
import com.davi.app.member.vo.DaviMemberVO;

public class MemberFindIdOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		
		DaviMemberVO d_vo = new DaviMemberVO();
		MemberDAO d_dao = new MemberDAO();
		
		String name = req.getParameter("memberName");
		String email = req.getParameter("memberEmail");
		String id = null;
		System.out.println("들어옴1");
		
		if(d_dao.checkFindId(name, email)) {
			id = d_dao.findId(name, email).substring(0, 4) + "******";
			System.out.println("들어옴2");
			
		} 
		
		if(id != null) {
			forward.setRedirect(false);
			forward.setPath("/app/member/findId_after.jsp?memberId=" + id);
		} else {
			forward.setRedirect(false);
			forward.setPath("/app/member/findId_before.jsp?result=false");
		}
		
		
		return forward;
	}
}
