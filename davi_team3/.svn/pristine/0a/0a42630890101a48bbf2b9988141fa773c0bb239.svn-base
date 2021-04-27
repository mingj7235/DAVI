package com.davi.app.board.qna;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardQnaDAO;

public class BoardQnaReplyDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		BoardQnaDAO fr_dao = new BoardQnaDAO();
		ActionForward forward = new ActionForward();
		String title = fr_dao.selectTitle(req.getParameter("qnaNum")).replace("[답변완료]", "");
		System.out.println("title" + title);
		
		int qnaReplyNum = Integer.parseInt(req.getParameter("qnaReplyNum"));
		System.out.println("qnaReplyNum" + qnaReplyNum);
		if(fr_dao.replyDelete(qnaReplyNum)) {
			System.out.println("댓글 삭제 성공");
			if(!fr_dao.checkReply(Integer.parseInt(req.getParameter("qnaNum")))) {
				fr_dao.updateTitle(title, req.getParameter("qnaNum"));
			}
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/board/qnaView.bo?page=" + req.getParameter("page") + "&qnaNum=" + req.getParameter("qnaNum") +"&reply=ok");
		}else {
			System.out.println("삭제 실패");
		}
		
		return forward;
	}

}
