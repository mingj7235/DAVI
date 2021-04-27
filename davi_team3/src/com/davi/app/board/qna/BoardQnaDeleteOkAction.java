package com.davi.app.board.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardQnaDAO;

public class BoardQnaDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		BoardQnaDAO f_dao = new BoardQnaDAO();
		ActionForward forward = new ActionForward();
		int qnaNum = Integer.parseInt(req.getParameter("qnaNum"));
		
		if(f_dao.delete(qnaNum)) {
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/board/qnaList.bo");
		}
		
		return forward;
	}

}
