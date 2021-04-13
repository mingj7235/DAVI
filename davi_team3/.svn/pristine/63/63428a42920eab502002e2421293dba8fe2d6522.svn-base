package com.davi.app.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.CertificatedBoardDAO;

public class CertificatedBoardViewOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		CertificatedBoardDAO c_dao = new CertificatedBoardDAO();
		ActionForward forward = new ActionForward();
		
		int certificatedNum = 1;
		
		
		req.setAttribute("certificatedList", c_dao.getCertificatedList(certificatedNum, certificatedNum+1)); 
		forward.setRedirect(false);
		forward.setPath("/board/ceritificatedBoard.bo");
		
		
		return forward;
	}
}
