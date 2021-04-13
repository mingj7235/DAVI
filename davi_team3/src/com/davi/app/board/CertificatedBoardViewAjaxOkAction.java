package com.davi.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.CertificatedBoardDAO;

public class CertificatedBoardViewAjaxOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		CertificatedBoardDAO c_dao = new CertificatedBoardDAO();
		
		int certificatedNum = 1;
		
		
		req.setAttribute("certificatedList", c_dao.getCertificatedList(certificatedNum, certificatedNum+1)); 
		
		
		return null;
	}
}
