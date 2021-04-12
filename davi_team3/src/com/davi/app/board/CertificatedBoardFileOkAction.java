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
		
		String saveFolder = "/Users/joshua/Desktop/JoshuaStudy/projects/DAVI/davi_team3/WebContent/app/board/temp";
		
		int fileSize = 5 * 1024 * 1024;  //size
		
		MultipartRequest multi = null;		
		
		multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		HttpSession session = req.getSession();
		
		Enumeration<String> files = multi.getFileNames();
		String path = "/tempImg/";
//		req.setAttribute("certificatedPath", path);
//		Map<Integer, String> imgs = new HashMap<Integer, String>();
//		int imgCnt = 0;
		
		while(files.hasMoreElements()) {
			String date = files.nextElement();
			String systemName = multi.getFilesystemName(date);
			if(systemName == null) {break;}	
			System.out.println("들어옴");
//			imgs.put(imgCnt, systemName);
//			imgCnt++;
			System.out.println(systemName);
			session.setAttribute("filename", systemName);
		}		
		session.setAttribute("path", path);
		//req.setAttribute("certificatedFileName", imgs.get(0));
		
		forward.setRedirect(false);
		forward.setPath("/app/board/certificated_normal_board_write.jsp");
		
		return forward;		
		
		
	}
}
