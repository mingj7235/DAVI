package com.davi.app.member;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.member.dao.MemberDAO;

public class MemberChartListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		HttpSession session = req.getSession();		
		MemberDAO m_dao = new MemberDAO();
		List<HashMap<String, Object>> lists = null;
		PrintWriter out = resp.getWriter();	
		HashMap<String, Object> map = new HashMap<>();
		
		JSONArray arrdata = new JSONArray();		
		
		String memberId = (String)session.getAttribute("session_id");
		
		Calendar now = Calendar.getInstance();
		SimpleDateFormat formatMonth = new SimpleDateFormat("MM");
		
		String nowMonth = formatMonth.format(now.getTime());
		System.out.println(nowMonth);
		int searchMonth = 0;
		
		try {
			searchMonth = Integer.parseInt(req.getParameter("searchMonth"));			
		} catch (NumberFormatException e) {
			searchMonth = Integer.parseInt(nowMonth);
		}		
		
		map.put("memberId", memberId);
		map.put("searchMonth", searchMonth);
		
		if((lists = m_dao.getMonthBody(map)) != null) {
			for(HashMap<String, Object> MemberMap : lists) {
				
				arrdata.add(MemberMap);
			}
			
			out.print(arrdata.toJSONString());		
		}			
		out.close();
		return null;
	}

}
