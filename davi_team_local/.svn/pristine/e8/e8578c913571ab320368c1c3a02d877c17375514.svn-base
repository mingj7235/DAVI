package com.davi.app.board;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.CertificatedBoardDAO;
import com.davi.app.board.vo.CertificatedBoardVO;
import com.davi.app.board.vo.CertificatedFilesVO;

public class CertificatedBoardViewAjaxOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		CertificatedBoardDAO c_dao = new CertificatedBoardDAO();
		CertificatedFilesVO cf_vo = new CertificatedFilesVO();
		
		int certificatedNum = Integer.parseInt(req.getParameter("certificatedNum"));		
					
		PrintWriter out = resp.getWriter();		
		
		JSONArray arReply = new JSONArray();
		
		List<CertificatedBoardVO> replys = c_dao.getCertificatedList(certificatedNum, certificatedNum+1);
		
		String text;
		
		for(CertificatedBoardVO c_vo : replys) {
			
			JSONObject reply = new JSONObject();
			
			reply.put("memberId", c_vo.getMemberId());
			reply.put("certificatedNum", c_vo.getCertificatedNum());
			reply.put("certificatedTitle", c_vo.getCertificatedTitle());
			reply.put("certificatedContent", c_vo.getCertificatedContent());						
			reply.put("certificatedDate", c_vo.getCertificatedDate());
			
			if(c_vo.getCertificatedContent().length() > 10) {
				text  = c_vo.getCertificatedContent().substring(0, 10) + "...";				
			}else {
				text  = c_vo.getCertificatedContent();
			}
			reply.put("certificatedContentMini", text);
			
			//cf_vo = c_dao.getFilePath(c_vo.getCertificatedNum()); //파일명 경로 가져오기			
			reply.put("certificatedFilePath", c_dao.getFilePath(c_vo.getCertificatedNum()));
			
			arReply.add(reply);
		}
		out.println(arReply.toJSONString());
		out.close();
		
		return null;
	}
}
