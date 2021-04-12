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
		
		return session.selectList("FreeBoard.listAll", page);
	}
	//자유게시판 목록 검색 헤드
	public List<BoardFreeVO> getBoardListSearchHead(int startRow, int endRow, String freeHead){
		HashMap<String, String> page = new HashMap<>();
		page.put("startRow", String.valueOf(startRow));
		page.put("endRow", String.valueOf(endRow));
		page.put("freeHead", "%" + freeHead + "%");
		
		return session.selectList("FreeBoard.listSearchHead", page);
	}
	
	//자유게시판 목록 검색 타이틀
	public List<BoardFreeVO> getBoardListSearchTitle(int startRow, int endRow, String freeTitle){
		HashMap<String, String> page = new HashMap<>();
		page.put("startRow", String.valueOf(startRow));
		page.put("endRow", String.valueOf(endRow));
		page.put("freeTitle", "%" + freeTitle + "%");
		
		return session.selectList("FreeBoard.listSearchTitle", page);
	}
	
	//자유게시판 목록 검색 아이디
	public List<BoardFreeVO> getBoardListSearchId(int startRow, int endRow, String memberId){
		HashMap<String, String> page = new HashMap<>();
		page.put("startRow", String.valueOf(startRow));
		page.put("endRow", String.valueOf(endRow));
		page.put("memberId", "%" + memberId + "%");
		
		return session.selectList("FreeBoard.listSearchId", page);
	}
	
	// 자유게시판 목록 개수 
	public int getBoardCnt() {
		return session.selectOne("FreeBoard.getBoardCnt");
	}
	
	public int getBoardCntSearchHead(String searchHead) {
		String freeHead = "%" + searchHead + "%";
		return session.selectOne("FreeBoard.getBoardCntSearchHead", freeHead );
	}
	
	public int getBoardCntSearchTitle(String searchTitle) {
		String freeTitle = "%" + searchTitle + "%";
		return session.selectOne("FreeBoard.getBoardCntSearchTitle", freeTitle);
	}
	
	public int getBoardCntSearchId(String Id) {
		String memberId = "%" + Id + "%";
		return session.selectOne("FreeBoard.getBoardCntSearchId" , memberId);
	}
	
	
	
	//게시글 가져오기
	public BoardFreeVO getDetail(int freeNum) {
		return session.selectOne("FreeBoard.getDetail", freeNum);
	}
	
	//게시글 삭제하기
	public boolean deleteFree(int freeNum) {
		return session.delete("FreeBoard.deleteFree",freeNum)==1;
	}
	
	//게시글 업데이트
	public boolean updateFree(BoardFreeVO bvo) {
		return session.update("FreeBoard.updateFree",bvo)==1;
	}
}
