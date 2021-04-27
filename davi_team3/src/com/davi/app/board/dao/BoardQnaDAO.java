package com.davi.app.board.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.davi.app.board.vo.BoardQnaVO;
import com.davi.mybatis.config.SqlMapConfig;

public class BoardQnaDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public BoardQnaDAO() {
		session = sessionf.openSession(true);		
	}
	
	//새글쓰기
	public boolean write(BoardQnaVO qvo) {
		return session.insert("QnaBoard.qnaWrite", qvo) == 1;
	}
	//글삭제
	public boolean delete(int qnaNum) {
		return session.delete("QnaBoard.deleteQna", qnaNum) == 1;	
	}
	//리스트
	public List<BoardQnaVO> list(int start, int end){
		HashMap<String, Integer> map = new HashMap<>();
		map.put("startRow", start);
		map.put("endRow", end);
		return session.selectList("QnaBoard.list", map);
	}
	//댓글여부
	public boolean checkReply(int qnaNum) {
		return (int)session.selectOne("QnaBoard.checkReply", qnaNum) > 0;
		
	}
}
