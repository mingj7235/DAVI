package com.davi.app.board;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.CertificatedBoardDAO;
import com.davi.app.board.vo.CertificatedReplyVO;

public class CertificatedBoardReplyWriteOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		 PrintWriter out = resp.getWriter();
		
		CertificatedReplyVO cr_vo = new CertificatedReplyVO();
		CertificatedBoardDAO c_dao = new CertificatedBoardDAO();
		
		int num = Integer.parseInt(req.getParameter("certificatedNum"));
		
		cr_vo.setCertificatedNum(num);
		cr_vo.setMemberId(req.getParameter("memberId"));
		cr_vo.setCertificatedReplyContent(req.getParameter("certificatedReplyContent"));
		
		if(c_dao.certificatedReplyInsert(cr_vo)) {
			//정보들어감
			out.print(num);
		}
		
		return null;
	}
}
