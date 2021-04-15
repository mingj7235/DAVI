package com.davi.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.CertificatedBoardDAO;
import com.davi.app.board.vo.CertificatedBoardVO;

public class CertificatedBoardModifyOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		CertificatedBoardDAO c_dao = new CertificatedBoardDAO();
		CertificatedBoardVO c_vo = new CertificatedBoardVO();
		ActionForward forward = new ActionForward();
		
		String certificatedTitle = req.getParameter("certificatedTitle");
		String certificatedContent = req.getParameter("certificatedContent");
		String memberId = req.getParameter("memberId");
		int certificatedNum = Integer.parseInt(req.getParameter("certificatedNum"));
		
		c_vo.setCertificatedNum(certificatedNum);
		c_vo.setCertificatedTitle(certificatedTitle);
		c_vo.setMemberId(memberId);
		c_vo.setCertificatedContent(certificatedContent);
		
		if(c_dao.certificatedModify(c_vo)) {
			System.out.println("수정성공");
			forward.setPath(req.getContextPath() + "/board/ceritificatedBoard.bo");
			forward.setRedirect(true);
		}else {
			System.out.println("수정실패");
		}
		
		return forward;
	}
}
