package com.davi.app.board.cheat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardCheatDAO;
import com.davi.app.board.dao.BoardFreeDAO;

public class BoardCheatListOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
			
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		BoardCheatDAO c_dao = new BoardCheatDAO();
		ActionForward forward = new ActionForward();
		
		String temp = req.getParameter("page");
		
		String cheatHead = req.getParameter("cheatHead");
		String searchWord = req.getParameter("searchWord");
		String search = req.getParameter("search");
		
		int totalCnt = 0;
		
		// 목록으로 돌아갈 때 필요한 page
		int page = temp == null ? 1 : Integer.parseInt(temp);
		
		// 한 페이지당 10개의 목록과 10개의 순서버튼이 보이도록 설정
		int boardSize = 10;
		int pageSize = 5;
		
		// 페이지에서 가장 마지막 게시글
		int endRow = page * boardSize;
		
		// 페이지에서 가장 첫번째 게시글
		int startRow = endRow - (boardSize - 1);
		
		// 목록페이지(가로)
		int startPage = ((page - 1) / pageSize) * pageSize + 1;
		int endPage = startPage + (pageSize - 1);
		
		
		if(cheatHead == null || cheatHead.equals("null")) {
			totalCnt = c_dao.getBoardCntSearchHead(searchWord);
		}else {
			if(cheatHead.equals("0")) {
				// 제목
				totalCnt = c_dao.getBoardCntSearchTitle(searchWord, search);			
			}else {
				// 아이디
				totalCnt = c_dao.getBoardCntSearchId(searchWord, search);
			}
		}
		
		
		
		int realEndPage = (totalCnt - 1) / boardSize + 1;
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("pageSize", pageSize);
		
		if(cheatHead == null || cheatHead.equals("null")) {
			req.setAttribute("CheatBoardList", c_dao.getBoardListCheatHead(startRow, endRow, searchWord));		
		}else {
			if(cheatHead.equals("0")) {
				// 제목
				req.setAttribute("CheatBoardList", c_dao.getBoardListSearchTitle(startRow, endRow, searchWord, search));				
			}else {
				// 아이디
				req.setAttribute("CheatBoardList", c_dao.getBoardListSearchId(startRow, endRow, searchWord, search));
			}
		}
		
		forward.setRedirect(false);
		forward.setPath("/app/board/cheatBoardList.jsp?cheatHead=" + cheatHead +"&searchWord=" + searchWord +"&search=" + search);
		
		return forward;
	}

}
