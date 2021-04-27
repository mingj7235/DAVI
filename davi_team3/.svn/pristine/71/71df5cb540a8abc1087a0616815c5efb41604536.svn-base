package com.davi.app.board.qna;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.BoardQnaDAO;
import com.davi.app.board.vo.BoardQnaReplyVO;
import com.davi.app.board.vo.BoardQnaVO;

public class BoardQnaViewOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		BoardQnaDAO qdao = new BoardQnaDAO();
		BoardQnaVO qvo = new BoardQnaVO();
		BoardQnaReplyVO qrvo = new BoardQnaReplyVO();
		
		
		ActionForward forward = null;
		ArrayList<Integer> reReplyCntList = new ArrayList<>();
		
		String reply = req.getParameter("reply");
		String qnaNum = req.getParameter("qnaNum");
		System.out.println("qnaNum" + qnaNum);
		int page = Integer.parseInt(req.getParameter("page"));
		int reReplyCount = 0;
		String password = req.getParameter("password");	
		System.out.println("password: " +password);
		
		qvo = qdao.qnaView(qnaNum);	
		boolean flag = false;
		boolean pwCheck = true;
		
		String qnaPassword = qvo.getQnaPassword();
		
		if(qnaPassword != null) {
			if(qnaPassword.equals(password) ) {
				//비번일치
				System.out.println("비번일치 들어옴");
				flag = true;
			}
		}else {
			flag = true;
			pwCheck = false;
		}
		
		
		if(qvo != null) {
			
			req.setAttribute("bf_vo", qvo);
			req.setAttribute("page", page);
			
			List<BoardQnaReplyVO> lists = qdao.replyList(qnaNum);		
			
			for(BoardQnaReplyVO vo : lists) {
				Calendar now = Calendar.getInstance();
				Calendar date = Calendar.getInstance();
				SimpleDateFormat YYYYMMddHHmmss = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String qnaDate = vo.getQnaReplyDate();
				Date replyDate = YYYYMMddHHmmss.parse(qnaDate);
				date.setTime(replyDate);
				
				int diffYear = now.get(Calendar.YEAR) - date.get(Calendar.YEAR);
				int diffMonth = now.get(Calendar.MONTH) - date.get(Calendar.MONTH);
				int diffDay = now.get(Calendar.DAY_OF_MONTH) - date.get(Calendar.DAY_OF_MONTH);
				int diffHour = now.get(Calendar.HOUR_OF_DAY) - date.get(Calendar.HOUR_OF_DAY);
				int diffMinute = now.get(Calendar.MINUTE) - date.get(Calendar.MINUTE);
				
				if(diffYear != 0) {
					vo.setQnaReplyDate(diffYear+"년 전");
				}else if(diffMonth != 0) {
					vo.setQnaReplyDate(diffMonth+"개월 전");
				}else if(diffDay != 0) {
					vo.setQnaReplyDate(diffDay+"일 전");
				}else if(diffHour !=0) {
					vo.setQnaReplyDate(diffHour+"시간 전");
				}else if(diffMinute !=0) {
					vo.setQnaReplyDate(diffMinute+"분 전");
				}else {
					vo.setQnaReplyDate("몇초 전");
				}
				
			}
			
			for (int i = 0; i <= lists.size(); i++) {
				
				if(i == lists.size()) {
					reReplyCntList.add(reReplyCount);
				}else {
					if(lists.get(i).getParentReplyId() == null) {
						reReplyCntList.add(reReplyCount);
						reReplyCount = 0;
					}else {
						reReplyCount++;
					}
				}			
			}			
			req.setAttribute("lists", lists);
			req.setAttribute("reReplyCntList", reReplyCntList);
			String path = null;
			if(flag) {
				path = "/app/board/qnaBoardView.jsp?flag=true";
			}else {
				if(pwCheck) {
					if(reply != null) {
						path = "/app/board/qnaBoardView.jsp?flag=true";
					}else {
						path="/app/board/qnaBoardView.jsp?flag=false";
					}
				}
			}
			
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath(path);
		}
		
		return forward;
	}
}

