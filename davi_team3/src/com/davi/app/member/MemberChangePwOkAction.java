package com.davi.app.member;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.member.dao.MemberDAO;

public class MemberChangePwOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		MemberDAO m_dao = new MemberDAO();
		
		String new_pw = req.getParameter("memberPw");
		String email = req.getParameter("email");
		String docking = req.getParameter("docking");
		
		if(m_dao.changePw(new_pw, email)) {
			String cookie = req.getHeader("Cookie");
			
			if(cookie != null) {
				Cookie[] cookies = req.getCookies();
				for(Cookie c: cookies){
					if(c.getName().equals("docking")){
						c.setMaxAge(0);
						resp.addCookie(c);
						break;
					}
				}
			}
			
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/member/login.me");
		}else {
			forward.setRedirect(false);
			forward.setPath("/member/changePw.me?checkPw=false&docking=" + docking);
		}
		
		return forward;
	}

}
