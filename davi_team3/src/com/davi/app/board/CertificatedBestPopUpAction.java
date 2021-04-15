package com.davi.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;

public class CertificatedBestPopUpAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		
		String num = req.getParameter("num");
		String id = req.getParameter("id" + num);
		String content = req.getParameter("content" + num);
		String title = req.getParameter("title" + num);
		String path = req.getParameter("path" + num);
		
		req.setAttribute("id", id);
		req.setAttribute("content", content);
		req.setAttribute("title", title);
		req.setAttribute("path", path);
		
		
		forward.setRedirect(false);
		forward.setPath("/app/board/bestBoardDetail.jsp");
		
		return forward;
	}
	
}
