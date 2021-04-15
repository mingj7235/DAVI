package com.davi.app.board.free;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardFreeDAO;
import com.davi.app.board.vo.BoardFreeReplyVO;
import com.davi.app.board.vo.BoardFreeVO;

public class BoardFreeViewOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		req.setCharacterEncoding("UTF-8");
		
		BoardFreeDAO f_dao = new BoardFreeDAO();
		BoardFreeVO bf_vo = new BoardFreeVO();
		BoardFreeReplyVO fr_vo = new BoardFreeReplyVO();		
		
		ActionForward forward = null;				
		
		int freeNum = Integer.parseInt(req.getParameter("freeNum"));
		int page = Integer.parseInt(req.getParameter("page"));	
				
		bf_vo = f_dao.getDetail(freeNum);
		
		if(bf_vo != null) {
			req.setAttribute("bf_vo", bf_vo);
			req.setAttribute("page", page);
			
			List<BoardFreeReplyVO> lists = f_dao.replyList(freeNum);
			
			req.setAttribute("lists", lists);
			
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/board/freeBoardView.jsp");
		}
		
		
		return forward;
		
	}
}
