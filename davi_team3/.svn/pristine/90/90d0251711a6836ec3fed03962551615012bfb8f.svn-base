package com.davi.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardCheatDAO;

public class BoardCheatDeleteOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		BoardCheatDAO f_dao = new BoardCheatDAO();
		ActionForward forward = new ActionForward();
		int cheatNum = Integer.parseInt(req.getParameter("cheatNum"));
		
		if(f_dao.deleteCheat(cheatNum)) {
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/board/cheatList.bo");
		}
		
		return forward;
	}
}
