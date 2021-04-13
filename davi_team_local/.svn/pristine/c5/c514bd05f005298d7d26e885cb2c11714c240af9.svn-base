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



public class CertifiAction implements Action{

	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		int pageNum = Integer.parseInt(req.getParameter("pageNum"));
		int boardNum = 0;
		
		PrintWriter out = resp.getWriter();
		CertificatedBoardDAO c_dao = new CertificatedBoardDAO(); 
		
		JSONArray arReply = new JSONArray();
		
		List<CertificatedBoardVO> replys = c_dao.certificatedList(pageNum);
		CertificatedFilesVO cf_vo = new CertificatedFilesVO();
		
		for(CertificatedBoardVO c_vo : replys) {
			
			JSONObject reply = new JSONObject();
			
			reply.put("memberId", c_vo.getMemberId());
			reply.put("certificatedNum", c_vo.getCertificatedNum());
			reply.put("certificatedTitle", c_vo.getCertificatedTitle());
			reply.put("certificatedContent", c_vo.getCertificatedContent());
			reply.put("certificatedDate", c_vo.getCertificatedDate());
			
			cf_vo = c_dao.certificatedFile(c_vo.getCertificatedNum()); //파일명 경로 가져오기			
			reply.put("certificatedFilePath", cf_vo.getCertificatedPath() + cf_vo.getCertificatedFileName());
			
			arReply.add(reply);
		}
		out.println(arReply.toJSONString());
		out.close();
		
		return null;
		
	}
}
