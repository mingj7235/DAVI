package com.davi.app.board.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.davi.app.board.vo.CertificatedBoardVO;
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
	
	
 		
}
