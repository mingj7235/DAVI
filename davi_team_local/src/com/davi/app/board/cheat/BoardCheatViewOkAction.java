package com.davi.app.board.cheat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardCheatDAO;
import com.davi.app.board.vo.BoardCheatVO;

public class BoardCheatViewOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		BoardCheatDAO f_dao = new BoardCheatDAO();
		BoardCheatVO bf_vo = new BoardCheatVO();
		ActionForward forward = null;
		
		int cheatNum = Integer.parseInt(req.getParameter("cheatNum"));
		int page = Integer.parseInt(req.getParameter("page"));	
		String searchWord = req.getParameter("searchWord");
		
		bf_vo = f_dao.getDetail(cheatNum);
		
		if(bf_vo != null) {
			req.setAttribute("bf_vo", bf_vo);
			req.setAttribute("page", page);
			req.setAttribute("searchWord", searchWord);
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/board/cheatBoardView.jsp");
		}
		return forward;
		
	}
}
