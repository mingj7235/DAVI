package com.davi.app.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.ActionForward;

public class MemberFrontController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;
		
		switch(command) {
		case "/member/findIdOk.me" :
			try {
				forward = new MemberFindIdOkAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "/member/findId.me" :
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/member/findId_before.jsp");
			
			
			break;
		case "/member/join.me" :
			try {
				forward = new MemberJoinOkAction().execute(req, resp);				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			break;
		case "/member/joinOk.me" :		
			if(req.getParameter("result").equals("true")) {
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/app/member/login.jsp");
			}else {
				//회원기입 실패시 메세지
			}			
			
			break;
			
		case "/member/loginOk.me":
			try {
				forward = new MemberLoginOkAction().execute(req, resp);
			} catch (Exception e) {;}
			break;
			
		case "/member/login.me":
			String login = req.getParameter("login");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/member/login.jsp" + (login != null ? "?login=false" : ""));
			break;	
			
		default:
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/error/404.jsp");
		}
		
		if(forward != null) {
			if(forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			}else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, resp);
			}
		}
	}
	
}