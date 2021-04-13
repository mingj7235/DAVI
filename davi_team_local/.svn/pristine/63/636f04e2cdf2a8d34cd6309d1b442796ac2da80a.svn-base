package com.davi.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardFreeDAO;

public class BoardFreeListOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
			
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		BoardFreeDAO f_dao = new BoardFreeDAO();
		ActionForward forward = new ActionForward();
		
		String temp = req.getParameter("page");
		
		System.out.println(temp);
		
		String searchFreeHead = req.getParameter("searchFreeHead");
		String searchFreeWord = req.getParameter("searchFreeWord");
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
		
		if(searchFreeHead == null) {
			totalCnt = f_dao.getBoardCnt();
		}else {
			if(searchFreeHead.equals("0")) {
				//분류
				totalCnt = f_dao.getBoardCntSearchHead(searchFreeWord);
			}else if(searchFreeHead.equals("1")) {
				//제목
				totalCnt = f_dao.getBoardCntSearchTitle(searchFreeWord);
			}else {
				//아이디
				totalCnt = f_dao.getBoardCntSearchId(searchFreeWord);
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
		
		if(searchFreeHead == null) {
			req.setAttribute("FreeBoardList", f_dao.getBoardList(startRow, endRow));			
		}else {
			if(searchFreeHead.equals("0")) {
				//분류
				req.setAttribute("FreeBoardList", f_dao.getBoardListSearchHead(startRow, endRow, searchFreeWord));				
			}else if(searchFreeHead.equals("1")) {
				//제목
				req.setAttribute("FreeBoardList", f_dao.getBoardListSearchTitle(startRow, endRow, searchFreeWord));
			}else {
				//아이디
				req.setAttribute("FreeBoardList", f_dao.getBoardListSearchId(startRow, endRow, searchFreeWord));
			}
		}
		
		forward.setRedirect(false);
		forward.setPath("/app/board/freeBoardList.jsp?searchFreeHead=" + searchFreeHead + "&searchFreeWord" + searchFreeWord);
		
		return forward;
	}

}
