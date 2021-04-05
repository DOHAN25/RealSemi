package com.board.biz;

import java.util.List;

import com.board.dao.BoardDao;
import com.board.dto.BoardDto;

public class BoardBiz {
	BoardDao dao = new BoardDao();
	
public List<BoardDto> selectAllList() {
		
		return dao.selectAllList();
	}

	
	public BoardDto selectOneById(String freecomm_id) {
		// TODO Auto-generated method stub
		return dao.selectOneById(freecomm_id);
	}

	
	public BoardDto selectOneByTitle(String freecomm_title) {
		// TODO Auto-generated method stub
		return dao.selectOneByTitle(freecomm_title);
	}

	
	public int insert(BoardDto dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	
	public int update(BoardDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}


	public int delete(int seq) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	public int updateRead(String freecomm_id) {
		// TODO Auto-generated method stub
		return dao.updateRead(freecomm_id);
	}

	
	public List<BoardDto> selectListPage(int startRaw, int endRow) {
		// TODO Auto-generated method stub
		return dao.selectListPage(startRaw, endRow);
	}

	
	public int getTotalRow() {
		// TODO Auto-generated method stub
		return dao.getTotalRow();
	}
}
