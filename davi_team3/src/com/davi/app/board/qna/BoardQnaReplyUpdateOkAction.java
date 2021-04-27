package com.davi.app.board.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardQnaDAO;
import com.davi.app.board.vo.BoardQnaReplyVO;

public class BoardQnaReplyUpdateOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		BoardQnaDAO fr_dao = new BoardQnaDAO();
		BoardQnaReplyVO fr_vo = new BoardQnaReplyVO();
		ActionForward forward = new ActionForward();
		
		int qnaReplyNum = Integer.parseInt(req.getParameter("qnaReplyNum"));
		String qnaReplyContent = req.getParameter("readReply"+qnaReplyNum);
		fr_vo.setQnaReplyContent(qnaReplyContent);
		fr_vo.setQnaReplyNum(qnaReplyNum);
		
		if(fr_dao.replyUpdate(fr_vo)) {
			//수정성공
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/board/qnaView.bo?page=" + req.getParameter("page") + "&qnaNum=" + req.getParameter("qnaNum") +"&reply=ok");
		}else {
			//수정실패			
			
		}
		
		return forward;
	}
}
