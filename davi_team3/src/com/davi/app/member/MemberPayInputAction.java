package com.davi.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;

public class MemberPayInputAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		ActionForward forward = new ActionForward();
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		req.setAttribute("price",req.getParameter("price"));
		req.setAttribute("product",req.getParameter("product"));
		req.setAttribute("id",req.getParameter("id"));
		
		forward.setPath("/app/dietary/payInput.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
