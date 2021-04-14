package com.davi.app.board;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.CertificatedBoardDAO;

public class CertificatedLikeOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		
		CertificatedBoardDAO c_dao = new CertificatedBoardDAO();
		PrintWriter out = resp.getWriter();
		int likeCnt = 0;
		
		int certificatedNum = Integer.parseInt(req.getParameter("certificatedNum"));
		String memberId = req.getParameter("memberId");
		int likeCheck = Integer.parseInt(req.getParameter("likeCheck"));
		
		
		if(likeCheck == 1 && c_dao.certificatedLike(certificatedNum, memberId)) {
			//like 작동
			likeCnt = c_dao.certificatedLikeCnt(certificatedNum);
			out.println(likeCnt);
		} else {
			//unlike 작동
			c_dao.certificatedUnLike(certificatedNum, memberId);
			likeCnt = c_dao.certificatedLikeCnt(certificatedNum);
			out.println(likeCnt);
		}
		out.close();
		
		return null;
	}

}
