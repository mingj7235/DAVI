package com.davi.app.board.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardQnaDAO;
import com.davi.app.board.vo.BoardQnaReplyVO;
import com.davi.app.board.vo.BoardQnaVO;

public class BoardQnaWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		BoardQnaVO qvo = new BoardQnaVO();
		BoardQnaDAO qdao = new BoardQnaDAO();
		
		ActionForward forward = null;	
		
		
		qvo.setQnaHead(req.getParameter("qnaHead"));
		qvo.setMemberId(req.getParameter("memberId"));
		qvo.setQnaTitle(req.getParameter("qnaTitle"));
		qvo.setQnaContent(req.getParameter("qnaContent"));
		
		if(req.getParameter("password") != null) {			
			qvo.setPassword(req.getParameter("password"));
		}else {
			qvo.setPassword(null);
		}
		
		if(req.getParameter("qnaHead").equals("공지")) {
			qvo.setQnaNotice(0);			
		}else {
			qvo.setQnaNotice(1);
		}
		
		
		
		if(qdao.write(qvo)) {
			//등록성공
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/board/qnaList.bo");
		}		
		return forward;
	}

}
