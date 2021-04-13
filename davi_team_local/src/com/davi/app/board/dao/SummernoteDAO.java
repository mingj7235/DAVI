package com.davi.app.board.dao;

import java.util.Enumeration;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.davi.app.board.vo.SummernoteFilesVO;
import com.davi.mybatis.config.SqlMapConfig;
import com.oreilly.servlet.MultipartRequest;

public class SummernoteDAO {
	
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public SummernoteDAO() {
		session = sessionf.openSession(true);		
	}
	
	public boolean insertFile(MultipartRequest multi, String boardName, int contentNum){
		
		SummernoteFilesVO svo = new SummernoteFilesVO();
		
		Enumeration<String> files = multi.getFileNames();
		
		while(files.hasMoreElements()) {
			String date = files.nextElement();
			String systemName = multi.getFilesystemName(date);
			
			if(systemName == null) {continue;}			
			
			svo.setFileName(systemName);
			svo.setBoardName(boardName);
			svo.setContentNum(contentNum);
			
			if(session.insert("FreeBoard.insertFile", svo)==1) {
				return true;
			}			
		}
		return false;
	}

}
