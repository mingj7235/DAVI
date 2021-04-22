package com.davi.app.member;

import java.util.ArrayList;
import java.util.Iterator;
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
		DaviPayVO p_vo = new DaviPayVO();
		
		HttpSession session = req.getSession();
				
		String memberId = (String)session.getAttribute("session_id"); 
		
		List<DaviPayVO> payList = new ArrayList<DaviPayVO>();
		
		if(m_dao.getPaymentList(memberId).size() == 0) {
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/app/member/mypage.jsp?listCheck=fail");
		} else {
			payList = m_dao.getPaymentList(memberId);
			
			for (int i = 0; i < payList.size(); i++) {
				String setDate = payList.get(i).getPayDate().substring(0,11);
				payList.get(i).setPayDate(setDate);
			}
			
			req.setAttribute("payList", payList);
			System.out.println(payList.get(0).getMemberId());
			System.out.println(payList.get(0).getProduct());
			System.out.println(payList.get(0).getPrice());
			System.out.println(payList.get(0).getPayDate());
			
			forward.setRedirect(false);
			forward.setPath("/member/memberPayList.me");
		}
		
		return forward;
	}
}
