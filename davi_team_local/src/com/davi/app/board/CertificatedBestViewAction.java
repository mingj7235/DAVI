package com.davi.app.board;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.CertificatedBoardDAO;
import com.davi.app.board.vo.CertificatedBoardVO;

public class CertificatedBestViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		ActionForward forward = new ActionForward();
		CertificatedBoardDAO c_dao = new CertificatedBoardDAO();
		CertificatedBoardVO c_vo = null;
		
		List<HashMap<String, Integer>> lists = c_dao.certificatedBestOrder();	
		List<CertificatedBoardVO> listsVO = new ArrayList<CertificatedBoardVO>();
		List<Integer> likeCntList = new ArrayList<Integer>();
		
		for (HashMap<String, Integer> map : lists) {
			System.out.println(map);
			int likeCnt = Integer.parseInt(String.valueOf(map.get("LIKECNT")));
			int certificatedNum =  Integer.parseInt(String.valueOf(map.get("CERTIFICATEDNUM")));
			String path = c_dao.getFilePath(certificatedNum);
			c_vo = c_dao.getCertificatedVO(certificatedNum);
			c_vo.setCertificatedPath(path);
			listsVO.add(c_vo);
			likeCntList.add(likeCnt);
		}
		
		req.setAttribute("listsVO", listsVO);
		req.setAttribute("likeCntList", likeCntList);
		
		System.out.println(lists);
		
		forward.setRedirect(false);
		forward.setPath("/app/board/bestBoard_new.jsp");
		
		return forward;
	}

}
