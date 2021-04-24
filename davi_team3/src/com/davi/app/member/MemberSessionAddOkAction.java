package com.davi.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.davi.action.Action;
import com.davi.action.ActionForward;

public class MemberSessionAddOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		ActionForward forward = new ActionForward();
		
		HttpSession session = req.getSession();
		session.getAttribute("session_id");
		session.setMaxInactiveInterval(600);			
		
		String nowPath = req.getParameter("nowPath");
		nowPath = nowPath.substring(nowPath.indexOf(req.getContextPath()) + req.getContextPath().length());
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + nowPath);
		
		
		return forward;
	}

}
