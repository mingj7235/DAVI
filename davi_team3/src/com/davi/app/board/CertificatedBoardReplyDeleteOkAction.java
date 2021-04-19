package com.davi.app.board;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.CertificatedBoardDAO;

public class CertificatedBoardReplyDeleteOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		CertificatedBoardDAO r_dao = new CertificatedBoardDAO();
		PrintWriter out = resp.getWriter();
		
		int certificatedReplyNum = Integer.parseInt(req.getParameter("certificatedReplyNum"));
		System.out.println(certificatedReplyNum);
		
		if(r_dao.deleteCertificatedReply(certificatedReplyNum)) {
			out.println("ok");
		}else {
			out.println("fail");
		}
		
		out.close();
		
		
		
		return null;
	}
}
