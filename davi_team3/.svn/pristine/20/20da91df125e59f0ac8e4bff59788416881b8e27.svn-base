package com.davi.app.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.CertificatedBoardDAO;
import com.davi.app.board.vo.CertificatedBoardVO;
import com.davi.app.board.vo.CertificatedFilesVO;

public class CertificatedBoardViewOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		CertificatedBoardDAO c_dao = new CertificatedBoardDAO();
		ActionForward forward = new ActionForward();		
		
		int certificatedNum = 1;
		List<CertificatedBoardVO> lists = c_dao.getCertificatedList(certificatedNum, certificatedNum+1);
		String[] texts = new String[2] ;  
		
		for(int i=0 ; i<lists.size() ; i++) {
//			cvo.setCertificatedPath(c_dao.getFilePath(cvo.getCertificatedNum()));
			lists.get(i).setCertificatedPath(c_dao.getFilePath(lists.get(i).getCertificatedNum()));
			if(lists.get(i).getCertificatedContent().length() > 10) {
				texts[i]  = lists.get(i).getCertificatedContent().substring(0, 10) + "...";				
			}else {
				texts[i]  = lists.get(i).getCertificatedContent();
			}
			
		}
		System.out.println(lists.size());
		
		req.setAttribute("certificatedList", lists); 
		req.setAttribute("ContentSubStringList", texts);
		
		forward.setRedirect(false);
		forward.setPath("/app/board/certificated_normal_board.jsp");
		
		
		return forward;
	}
}
