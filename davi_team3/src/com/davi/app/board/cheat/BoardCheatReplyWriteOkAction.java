package com.davi.app.board.cheat;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardCheatDAO;
import com.davi.app.board.dao.BoardFreeDAO;
import com.davi.app.board.vo.BoardCheatReplyVO;
import com.davi.app.board.vo.BoardFreeReplyVO;

public class BoardCheatReplyWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
req.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		
		BoardCheatReplyVO cr_vo = new BoardCheatReplyVO();
		BoardCheatDAO c_dao = new BoardCheatDAO();
		
		String page = req.getParameter("page");
		String cheatReplyNum = req.getParameter("freeReplyNum"); //부모 댓글 번호	
		String searchWord = URLEncoder.encode(req.getParameter("searchWord"), "UTF-8");
		
		cr_vo.setCheatNum(Integer.parseInt(req.getParameter("cheatNum")));		
		cr_vo.setMemberId(req.getParameter("memberId"));
		cr_vo.setCheatReplyContent(req.getParameter("cheatReplyContent"));		
		
		if(cheatReplyNum == null) {			
			cr_vo.setParentReplyNum(0);
			cr_vo.setParentReplyId("");
		}else {
			cr_vo.setParentReplyNum(Integer.parseInt(cheatReplyNum));
			cr_vo.setParentReplyId(c_dao.parentNumToId(cheatReplyNum));			
		}
		
		if(c_dao.replyInsert(cr_vo)) {
			//성공
			
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/board/cheatViewOk.bo?page=" + page + "&cheatNum=" 
			+ req.getParameter("cheatNum") + "&searchWord=" + searchWord);
		}
		
		return forward;
	}

}
