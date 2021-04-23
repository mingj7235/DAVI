package com.davi.app.board.cheat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardCheatDAO;
import com.davi.app.board.vo.BoardCheatReplyVO;

public class BoardCheatReplyUpdateOkAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		BoardCheatDAO cr_dao = new BoardCheatDAO();
		BoardCheatReplyVO cr_vo = new BoardCheatReplyVO();
		ActionForward forward = new ActionForward();
	
		int cheatReplyNum = Integer.parseInt(req.getParameter("cheatReplyNum"));
		String cheatReplyContent = req.getParameter("readReply"+cheatReplyNum);
		cr_vo.setCheatReplyContent(cheatReplyContent);
		cr_vo.setCheatReplyNum(cheatReplyNum);
		
		if(cr_dao.replyUpdate(cr_vo)) {
			//수정성공			
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/board/cheatViewOk.bo?page=" + req.getParameter("page") + "&cheatNum=" + req.getParameter("cheatNum"));
		}else {
			//수정실패			
		}
		
		return forward;
	}

}
