package com.davi.app.board;

import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.vo.CertificatedBoardVO;
import com.davi.app.board.vo.CertificatedFilesVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class CertificatedBoardOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ActionForward forward = null;
		
		CertificatedBoardVO c_vo = new CertificatedBoardVO();
		CertificatedFilesVO cf_vo = new CertificatedFilesVO();
		
		PrintWriter out = resp.getWriter();		
		
		String saveFolder = "/Users/joshua/Desktop/JoshuaStudy/projects/DAVI/davi_team3/WebContent/app/board/temp";
		
		int fileSize = 5 * 1024 * 1024; 
		
		MultipartRequest multi = null;		
		
		multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		Enumeration<String> files = multi.getFileNames();
		
		while(files.hasMoreElements()) {
			String date = files.nextElement();
			String systemName = multi.getFilesystemName(date);
			if(systemName == null) {break;}	
			out.print("/tempImg/" + systemName.trim());
		}		
		out.close();
		
		return null;		
		
		
	}
}
