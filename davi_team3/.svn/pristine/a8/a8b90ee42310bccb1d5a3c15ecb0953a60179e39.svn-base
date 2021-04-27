package com.davi.app.board.qna;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardQnaDAO;
import com.davi.app.board.dao.BoardWarningDAO;
import com.davi.app.board.vo.BoardWarningVO;

public class BoardWarningWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ActionForward forward = null;
		BoardWarningVO w_vo = new BoardWarningVO();
		BoardWarningDAO w_dao = new BoardWarningDAO();
		
		w_vo.setMemberId(req.getParameter("id"));
		w_vo.setWarningContent(req.getParameter("content"));
		
		if(w_dao.insertWarning(w_vo)) {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/board/qnaList.bo?qnaHead=" + URLEncoder.encode("신고목록", "UTF-8"));
		}
		
		return forward;
	}

}
