package com.davi.app.member;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

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
		
		List<HashMap<String, Object>> rankingList = null;
		
		rankingList = m_dao.getRanking();
		String memberId = (String)session.getAttribute("session_id");
		
		
		req.setAttribute("rankingList", rankingList);
		
		
		if(m_dao.getBody(memberId)) {
			req.setAttribute("check", "true");
			int dailyRate = m_dao.getDailyRate(memberId);
			req.setAttribute("dailyRate", dailyRate);
		}else {
			req.setAttribute("check", "false");
		}
		
		forward.setRedirect(false);
		forward.setPath("/app/dietary/memberChart.jsp");
		
		return forward;
		
		
		
		
		
		
		
		
		
//		HashMap<String, Object> map = m_dao.getBodyMap(memberId); // 가장최근 날짜
//		
//		SimpleDateFormat MMdd = new SimpleDateFormat("MM-dd");
//		Date now = new Date();
//		Calendar cal = Calendar.getInstance(Locale.KOREA);
//		cal.setTime(now);
//
//		System.out.println("입력한 날짜 : "+MMdd.format(cal.getTime()));
//		cal.add(Calendar.DATE, -5 - cal.get(Calendar.DAY_OF_WEEK));
//		String startDate = MMdd.format(cal.getTime());
//		cal.setTime(now);
//		cal.add(Calendar.DATE, 1 - cal.get(Calendar.DAY_OF_WEEK));
//		String endDate = MMdd.format(cal.getTime());
//		
//		List<String> idList = m_dao.getRankingId(startDate, endDate);
//		ArrayList<HashMap<String, Object>> memberRateList = new ArrayList<HashMap<String, Object>>();
//		
//		
//		for (String id : idList) {
//			List<DaviBodyVO> voList = m_dao.getRanking(startDate, endDate, id);
//			int memberRate = voList.get(voList.size() - 1).getBodyWeight() - voList.get(0).getBodyWeight(); 
//			HashMap<String, Object> rankingMap = new HashMap<String, Object>();
//			rankingMap.put("memberId", id);
//			rankingMap.put("memberRate", memberRate);
//			memberRateList.add(rankingMap);
//		}
//		
//		String nowDate = MMdd.format(now);
//		
//		if(map != null) {
//			if(nowDate.equals(String.valueOf(map.get("DAVIDATE")))) {
//				req.setAttribute("check", "true");
//			}else {
//				req.setAttribute("check", "false");
//			}
//		}else {
//			req.setAttribute("check", "false");
//		}
//		
		
	}

}