package com.davi.app.board;

import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.vo.CertificatedBoardVO;
import com.davi.app.board.vo.CertificatedFilesVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class CertificatedBoardFileOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		
		String saveFolder = "D:\\3조프로젝트\\workspace\\davi_team3\\WebContent\\app\\board\\temp";
		
		int fileSize = 5 * 1024 * 1024;  //size
		
		MultipartRequest multi = null;		
		
		multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		HttpSession session = req.getSession();
		
		Enumeration<String> files = multi.getFileNames();
		String path = "/tempImg/";
		
		while(files.hasMoreElements()) {
			String date = files.nextElement();
			String systemName = multi.getFilesystemName(date);
			if(systemName == null) {break;}				
			session.setAttribute("filename", systemName);
		}		
		session.setAttribute("path", path);
		
		forward.setRedirect(false);
		forward.setPath("/app/board/certificated_normal_board_write.jsp");
		
		return forward;		
		
		
	}
}
