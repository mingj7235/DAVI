package com.davi.app.board.free;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardFreeDAO;
import com.davi.app.board.vo.BoardFreeVO;

public class BoardFreeModifyOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		BoardFreeVO b_vo = new BoardFreeVO();
		BoardFreeDAO b_dao = new BoardFreeDAO();
		ActionForward forward = new ActionForward();
		
		String freeTitle = req.getParameter("freeTitle");
		String freeContent = req.getParameter("freeContent");
		int freeNum = Integer.parseInt(req.getParameter("freeNum"));
		int page = Integer.parseInt(req.getParameter("page"));
		
		b_vo.setFreeTitle(freeTitle);
		b_vo.setFreeContent(freeContent);
		b_vo.setFreeNum(freeNum);
		System.out.println(freeTitle);
		System.out.println(freeContent);
		
		if(b_dao.updateFree(b_vo)) {
			forward.setRedirect(false);
			forward.setPath("/board/freeViewOk.bo?freeNum="+freeNum+"&page="+page);
		}
		
		 
		
		return forward;
	}
}
