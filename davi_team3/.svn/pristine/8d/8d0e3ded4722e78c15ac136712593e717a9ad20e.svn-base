package com.davi.app.board.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.davi.app.board.vo.BoardFreeVO;
import com.davi.mybatis.config.SqlMapConfig;

public class BoardFreeDAO {

	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public BoardFreeDAO() {
		session = sessionf.openSession(true);		
	}
	
	// 자유게시판 글쓰기
	public boolean boardFreeWrite(BoardFreeVO bvo) {		
		return session.insert("FreeBoard.freeWrite", bvo) == 1;
	}
	
	// 자유게시판 목록 불러오기
	public List<BoardFreeVO> getBoardList(int startRow, int endRow){
		HashMap<String, Integer> page = new HashMap<>();
		page.put("startRow", startRow);
		page.put("endRow", endRow);
		
		return session.selectOne("FreeBoard.listAll", page);
	}
	
	// 자유게시판 목록 개수 
	public int getBoardCnt() {
		return session.selectOne("FreeBoard.getBoardCnt");
	}
	
	//게시글 가져오기
	public BoardFreeVO getDetail(int freeNum) {
		return session.selectOne("FreeBoard.getDetail", freeNum);
	}
}
