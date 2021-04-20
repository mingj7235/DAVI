package com.davi.app.board;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.CertificatedBoardDAO;
import com.davi.app.board.vo.CertificatedReplyVO;

import oracle.jdbc.util.RepConversion;

public class CertificatedBoardReplyWriteOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		 PrintWriter out = resp.getWriter();
		
		CertificatedReplyVO cr_vo = new CertificatedReplyVO();
		CertificatedBoardDAO c_dao = new CertificatedBoardDAO();
		System.out.println("컨트롤들어옴1");
		
		int num = Integer.parseInt(req.getParameter("certificatedNum"));
		String memberId = req.getParameter("memberId");
		String replyContent = req.getParameter("certificatedReplyContent");
		
		System.out.println("컨트롤들어옴2");
		
		System.out.println(num);
		System.out.println(memberId);
		System.out.println(replyContent);
		
		cr_vo.setCertificatedNum(num);
		cr_vo.setMemberId(memberId);
		cr_vo.setCertificatedReplyContent(replyContent);
		
		
		
		if(c_dao.certificatedReplyInsert(cr_vo)) {
			//정보들어감
			System.out.println("dao들어감 ");
			out.print(num);
		}else {
			System.out.println("dao안들어");
		}
		
		return null;
	}
}
