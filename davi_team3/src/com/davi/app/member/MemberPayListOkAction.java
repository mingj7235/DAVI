package com.davi.app.member;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.member.dao.MemberDAO;
import com.davi.app.member.vo.DaviPayVO;

public class MemberPayListOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		MemberDAO m_dao = new MemberDAO();
		
		HttpSession session = req.getSession();
				
		String memberId = (String)session.getAttribute("session_id"); 
		
		List<DaviPayVO> payList = new ArrayList<DaviPayVO>();
		
		payList = m_dao.getPaymentList(memberId);
		
		req.setAttribute("payList", payList);
		System.out.println(payList.get(0).getMemberId());
		System.out.println(payList.get(0).getProduct());
		System.out.println(payList.get(0).getPrice());
		
		forward.setRedirect(false);
		forward.setPath("*");
		
		
		
		return null;
	}
}
