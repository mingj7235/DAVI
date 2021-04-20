package com.davi.app.board.file;

import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.ActionForward;
import com.davi.app.board.vo.SummernoteFilesVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class SummernoteFileUpload {

	public ActionForward fileUpload(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();		
		
		//SummernoteFilesVO fvo = new SummernoteFilesVO();	
		
		String saveFolder = "/Users/joshua/Desktop/JoshuaStudy/projects/DAVI/davi_team3/WebContent/app/board/temp";
		
		int fileSize = 5 * 1024 * 1024; //5M
		
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
