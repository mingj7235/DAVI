package com.davi.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardFreeDAO;
import com.davi.app.board.vo.BoardFreeVO;

public class CheatFreeViewOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		BoardFreeDAO f_dao = new BoardFreeDAO();
		BoardFreeVO bf_vo = new BoardFreeVO();
		ActionForward forward = null;
		System.out.println("액션 들어옴");
		
		/* 1번 시험할 때
		 * int freeNum = 1;
		int page =1;*/
		
		int freeNum = Integer.parseInt(req.getParameter("freeNum"));
		int page = Integer.parseInt(req.getParameter("page"));	
		
		bf_vo = f_dao.getDetail(freeNum);
		
		if(bf_vo != null) {
			System.out.println("액션 들어옴2");
			req.setAttribute("bf_vo", bf_vo);
			req.setAttribute("page", page);
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/board/freeBoardView.jsp");
		}
		return forward;
		
	}
}
