package com.davi.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.member.dao.MemberDAO;
import com.davi.app.member.vo.DaviMemberVO;

public class DaviMemberJoinOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		
		DaviMemberVO mvo = new DaviMemberVO();
		MemberDAO mdao = new MemberDAO();
		
		mvo.setMemberId(req.getParameter("memberId"));
		mvo.setMemberPw(req.getParameter("memberPw"));
		mvo.setMemberName(req.getParameter("memberName"));
		mvo.setMemberPhone(req.getParameter("memberPhone"));
		mvo.setMemberEmail(req.getParameter("memberMail"));
		mvo.setMemberGender(req.getParameter("memberGender"));
		mvo.setMemberHeight(Integer.parseInt(req.getParameter("memberHeight")));
		mvo.setMemberWeight(Integer.parseInt(req.getParameter("memberWeight")));
		mvo.setMemberGoalWeight(Integer.parseInt(req.getParameter("memberGoalWeight")));
		mvo.setMemberResolution(req.getParameter("memberResolution"));		
		
		if(mdao.join(mvo)) {
			
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/member/MemberjoinOk.me?result=true");
			
		}else {	
			
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/member/MemberjoinOk.me?result=false");
			
		}		
		return forward;		
	}
	
}
