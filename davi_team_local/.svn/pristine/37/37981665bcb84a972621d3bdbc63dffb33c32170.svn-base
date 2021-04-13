package com.davi.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.member.dao.MemberDAO;

public class MemberCheckIdAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		resp.setCharacterEncoding("UTF-8");
		MemberDAO mdao = new MemberDAO();
		PrintWriter write =resp.getWriter();
		
		if(mdao.checkId(req.getParameter("memberId"))) {
			//사용불가능 아이디
			write.println(0);
		}else {
			//사용가능한 아이디
			write.println(1);
		}	
		write.close();
		return null;
	}
		
	
	
}
