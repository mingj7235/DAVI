package com.davi.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.CertificatedBoardDAO;

public class CertificatedBoardDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		System.out.println("들어옴1");
		ActionForward forward = new ActionForward();
		
		CertificatedBoardDAO c_dao = new CertificatedBoardDAO();
		
		System.out.println("들어옴2");
		req.getParameter("certificatedNum");
		System.out.println(req.getParameter("certificatedNum"));
		
		if(c_dao.certificatedBoardDelete(Integer.parseInt(req.getParameter("certificatedNum")))) {
			System.out.println("dao 이상있니?");
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/board/ceritificatedBoard.bo");
		}		
		return forward;
	}

}
