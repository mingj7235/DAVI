package com.davi.app.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.ActionForward;

public class BoardFrontController extends HttpServlet{

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
		case "/board/freeWriteOk.bo":
			try {
				forward = new BoardFreeWriteOkAcrion().execute(req, resp);
			} catch (Exception e) {				
				e.printStackTrace();
			}			
			break;		
			
		case "/board/certificatePhoto.bo" :
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/board/certificated_normal_board_write.jsp");
			break;
			
		case "/board/freeViewOk.bo":
			try {
				forward = new BoardFreeViewOkAction().execute(req, resp);
			} catch (Exception e) {				
				e.printStackTrace();
			}			
			break;	
			
		case "/board/freeList.bo":
			try {
				forward = new BoardFreeListOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println("freeList Action 오류");
				e.printStackTrace();
			}
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