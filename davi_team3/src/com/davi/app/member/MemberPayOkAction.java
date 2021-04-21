package com.davi.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.member.dao.MemberDAO;
import com.davi.app.member.vo.DaviPayVO;

public class MemberPayOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		MemberDAO m_dao = new MemberDAO();
		DaviPayVO p_vo = new DaviPayVO();
		ActionForward forward = new ActionForward();
		
		p_vo.setMemberId(req.getParameter("id"));
		p_vo.setMemberName(req.getParameter("name"));
		p_vo.setMemberPhone(req.getParameter("phone"));
		p_vo.setMemberEmail(req.getParameter("email"));
		p_vo.setMemberZipcode(req.getParameter("zipcode"));
		p_vo.setMemberAddress(req.getParameter("adress"));
		p_vo.setMemberAddressDetail(req.getParameter("adressDetails"));
		p_vo.setProduct(req.getParameter("product"));
		p_vo.setPrice(Integer.parseInt(req.getParameter("price")));
		
		if(m_dao.payInsert(p_vo)) {
			forward.setRedirect(false);
			forward.setPath("/member/weekMenu.me");
		}
		
		return forward;
	}
}
