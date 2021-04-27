package com.davi.app.board.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardQnaDAO;
import com.davi.app.board.vo.BoardQnaReplyVO;

public class BoardQnaReplyWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		
		BoardQnaReplyVO fr_vo = new BoardQnaReplyVO();
		BoardQnaDAO f_dao = new BoardQnaDAO();
		
		String page = req.getParameter("page");
		String qnaReplyNum = req.getParameter("qnaReplyNum"); //부모 댓글 번호	
		String title = req.getParameter("qnaTitle");
		
		if(!req.getParameter("qnaTitle").contains("[답변완료]")) {
			title = req.getParameter("qnaTitle") +"[답변완료]";
		}
			
		fr_vo.setQnaNum(Integer.parseInt(req.getParameter("qnaNum")));		
		fr_vo.setMemberId(req.getParameter("memberId"));
		fr_vo.setQnaReplyContent(req.getParameter("qnaReplyContent"));		
		System.out.println(qnaReplyNum);
		
		if(qnaReplyNum == null) {			
			fr_vo.setParentReplyNum(0);
			fr_vo.setParentReplyId("");
		}else {
			fr_vo.setParentReplyNum(Integer.parseInt(qnaReplyNum));
			
			try {
				fr_vo.setParentReplyId(f_dao.parentNumToId(qnaReplyNum));
			} catch (Exception e) {
				fr_vo.setParentReplyId("");
			}			
		}
		
		if(f_dao.replyInsert(fr_vo)) {
			//성공
			if(f_dao.updateTitle(title, req.getParameter("qnaNum"))){
				forward.setRedirect(true);
				forward.setPath(req.getContextPath() + "/board/qnaView.bo?page=" + page + "&qnaNum=" + req.getParameter("qnaNum") +"&reply=ok");
			}
			
		}
		
		return forward;
		
	}

}
