package com.bitacademy.helpme.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitacademy.helpme.repository.BoardRepository;
import com.bitacademy.helpme.vo.BoardVo;

@Service
public class BoardService {
	@Autowired
	private BoardRepository boardRepository;

	public boolean insert(BoardVo vo) {
		// TODO Auto-generated method stub
		return boardRepository.insert(vo);
	}

	public List<BoardVo> selectAll() {
		return boardRepository.selectAll();
	}

	public BoardVo findByNo(long no) {
		// TODO Auto-generated method stub
		return boardRepository.selectByNo(no);
	}
}
