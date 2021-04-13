package com.davi.app.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.ActionForward;
import com.davi.app.board.file.SummernoteFileUpload;

public class BoardFrontController extends HttpServlet{

	/**
	 * d
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
		case "/board/cheatWriteOk.bo":
			try {
				forward = new BoardCheatWriteOkAcrion().execute(req, resp);
			} catch (Exception e) {				
				e.printStackTrace();
			}			
			break;		
		case "/board/summernoteFile.bo":
			try {				
				forward = new SummernoteFileUpload().fileUpload(req, resp);
			} catch (Exception e) {				
				e.printStackTrace();
			}			
			break;	
		case "/board/certificatePhotoOk.bo" :
			try {
				forward = new CertificatedBoardFileOkAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
			
		case "/board/certificateWriteOk.bo" :
			try {
				forward = new CertificatedBoardWriteOkAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
			
		case "/board/ceritificatedBoard.bo" :
			try {
				forward = new CertificatedBoardViewOkAction().execute(req, resp);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
//			forward = new ActionForward();
//			forward.setRedirect(true);
//			System.out.println("들어옴");
//			forward.setPath(req.getContextPath() + "/app/board/certificated_normal_board.jsp");
			
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
		
		case "/board/freeDeleteOk.bo":
			try {
				forward = new BoardFreeDeleteOkAction().execute(req, resp);
			} catch (Exception e) {;}
			break;
			
		case "/board/freeModifyOk.bo":
			try {
				forward = new BoardFreeModifyOkAction().execute(req, resp);
			} catch (Exception e) {;}
			break;	
		
		case "/board/cheatViewOk.bo":
			try {
				forward = new BoardCheatViewOkAction().execute(req, resp);
			} catch (Exception e) {;}
			break;	
		
		case "/board/cheatDeleteOk.bo":
			try {
				forward = new BoardCheatDeleteOkAction().execute(req, resp);
			} catch (Exception e) {;}
			break;
			
		case "/board/cheatModifyOk.bo":
			try {
				forward = new BoardCheatModifyOkAction().execute(req, resp);
			} catch (Exception e) {;}
			break;
			
		case "/board/cheatList.bo":
			try {
				forward = new BoardCheatListOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println("cheatList Action 오류");
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