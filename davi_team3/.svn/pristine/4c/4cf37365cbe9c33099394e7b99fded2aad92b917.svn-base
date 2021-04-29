package com.davi.app.board.qna;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardWarningDAO;

public class BoardQnaDeleteIdOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		BoardWarningDAO w_dao = new BoardWarningDAO();
		
		String id = req.getParameter("id");
		
		w_dao.deleteIdFree(id);
		w_dao.deleteIdCheat(id);
		w_dao.deleteIdCertificated(id);
		w_dao.deleteIdQna(id);
		w_dao.deleteIdMember(id);
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/board/qnaList.bo?qnaHead=" + URLEncoder.encode("신고목록", "UTF-8"));
		
		return forward;
	}

}
