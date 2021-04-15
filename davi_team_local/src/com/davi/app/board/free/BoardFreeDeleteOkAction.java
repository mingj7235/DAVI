package com.davi.app.board.free;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardFreeDAO;

public class BoardFreeDeleteOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		BoardFreeDAO f_dao = new BoardFreeDAO();
		ActionForward forward = new ActionForward();
		int freeNum = Integer.parseInt(req.getParameter("freeNum"));
		
		if(f_dao.deleteFree(freeNum)) {
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/board/freeList.bo");
		}
		
		return forward;
	}
}
