package com.davi.app.board.cheat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardCheatDAO;
import com.davi.app.board.vo.BoardCheatVO;

public class BoardCheatModifyOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		BoardCheatVO b_vo = new BoardCheatVO();
		BoardCheatDAO b_dao = new BoardCheatDAO();
		ActionForward forward = new ActionForward();
		
		String cheatTitle = req.getParameter("cheatTitle");
		String cheatContent = req.getParameter("cheatContent");
		int cheatNum = Integer.parseInt(req.getParameter("cheatNum"));
		int page = Integer.parseInt(req.getParameter("page"));
		String searchWord = req.getParameter("searchWord");
		
		b_vo.setCheatTitle(cheatTitle);
		b_vo.setCheatContent(cheatContent);
		b_vo.setCheatNum(cheatNum);
		System.out.println(cheatTitle);
		System.out.println(cheatContent);
		
		if(b_dao.updateCheat(b_vo)) {
			forward.setRedirect(false);
			forward.setPath("/board/cheatViewOk.bo?cheatNum="+cheatNum+"&page="+page +"&searchWord=" + searchWord);
		}
		return forward;
	}
}
