package com.davi.app.board.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.davi.app.board.vo.CertificatedBoardVO;
import com.davi.app.board.vo.CertificatedFilesVO;
import com.davi.mybatis.config.SqlMapConfig;

public class CertificatedBoardDAO {

	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public CertificatedBoardDAO() {
		session = sessionf.openSession(true);		
	}
	
	public boolean certificatedBoardWrite (CertificatedBoardVO c_vo) {
		return session.insert("CertificatedBoard.certificatedWrite", c_vo) == 1;
	}
	
	public int getCertificatedNum (String memberId) {
		return session.selectOne("CertificatedBoard.getCertificatedNum", memberId);
	}
	
	public boolean certificatedFilesWrite (CertificatedFilesVO cf_vo) {
		return session.insert("CertificatedBoard.certificatedFile", cf_vo) ==1;
	}
	
	public List<CertificatedBoardVO> getCertificatedList(int startRow, int endRow){
		HashMap<String, Integer> page = new HashMap<>();
		page.put("startRow", startRow);
		page.put("endRow", endRow);
		
		return session.selectList("CertificatedBoard.getCertificatedList",page);
	}
	
	public String getFilePath(int certificatedNum) {
		CertificatedFilesVO f_vo =  session.selectOne("CertificatedBoard.getCertificatedFilePath", certificatedNum);
		
		return f_vo.getCertificatedPath() + f_vo.getCertificatedFileName();
		
	}
	
	
	
	
	
	
	
	
 		
}
