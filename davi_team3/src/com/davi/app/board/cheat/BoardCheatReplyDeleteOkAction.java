package com.davi.app.board.cheat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardCheatDAO;

public class BoardCheatReplyDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");

		BoardCheatDAO cr_dao = new BoardCheatDAO();
		ActionForward forward = new ActionForward();

		int cheatReplyNum = Integer.parseInt(req.getParameter("cheatReplyNum"));
		if (cr_dao.replyDelete(cheatReplyNum)) {
			System.out.println("댓글 삭제 성공");			
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/board/cheatViewOk.bo?page=" + req.getParameter("page") + "&cheatNum="
					+ req.getParameter("cheatNum"));
		} else {
			System.out.println("삭제 실패");

		}

		return forward;
	}

}
