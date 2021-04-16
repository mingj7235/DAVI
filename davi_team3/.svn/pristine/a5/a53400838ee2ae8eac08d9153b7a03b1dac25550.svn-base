package com.davi.app.member;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.member.dao.MemberDAO;
import com.davi.app.member.vo.DaviBodyVO;

public class MemberReportViewOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");	
		
		ActionForward forward = new ActionForward();
		MemberDAO m_dao = new MemberDAO();
		DaviBodyVO b_vo = new DaviBodyVO();
		HttpSession session = req.getSession();
		
		String memberId = (String) session.getAttribute("session_id"); 
		HashMap<String, Object> map = m_dao.getBodyDate(memberId); // 가장최근 날짜
		System.out.println(String.valueOf(map.get("DAVIDATE")));
		
		SimpleDateFormat MMdd = new SimpleDateFormat("MM-dd");
		Date now = new Date();
		String nowDate = MMdd.format(now);
		
		System.out.println(nowDate);
		
		if(nowDate.equals(String.valueOf(map.get("DAVIDATE")))) {
			req.setAttribute("check", "true");
		}else {
			req.setAttribute("check", "false");
		}
		
		forward.setRedirect(false);
		forward.setPath("/app/dietary/memberChart.jsp");
		
		return forward;
	}

}
