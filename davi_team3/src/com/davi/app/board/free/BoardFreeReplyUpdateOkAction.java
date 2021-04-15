package com.davi.app.board.free;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardFreeDAO;
import com.davi.app.board.vo.BoardFreeReplyVO;

public class BoardFreeReplyUpdateOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		BoardFreeDAO fr_dao = new BoardFreeDAO();
		BoardFreeReplyVO fr_vo = new BoardFreeReplyVO();
		ActionForward forward = new ActionForward();
		System.out.println("들어옴 컨트롤러");
		int freeReplyNum = Integer.parseInt(req.getParameter("freeReplyNum"));
		String freeReplyContent = req.getParameter("readReply"+freeReplyNum);
		fr_vo.setFreeReplyContent(freeReplyContent);
		fr_vo.setFreeReplyNum(freeReplyNum);
		
		if(fr_dao.replyUpdate(fr_vo)) {
			System.out.println("수정 성공");
			
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/board/freeViewOk.bo?page=" + req.getParameter("page") + "&freeNum=" + req.getParameter("freeNum"));
		}else {
			System.out.println("수정 실패");
			
		}
		
		return forward;
	}
}
