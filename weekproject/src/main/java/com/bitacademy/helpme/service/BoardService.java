package com.bitacademy.helpme.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitacademy.helpme.repository.BoardRepository;
import com.bitacademy.helpme.vo.BoardVo;
import com.bitacademy.helpme.vo.RepleVo;

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

	public boolean deleteByNo(long no) {
		return boardRepository.deleteByNo(no);
	}

	public List<BoardVo> selectByCategory(String category) {
		return boardRepository.findByCategory(category);
	}

	public List<BoardVo> selectByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return boardRepository.findByKeyword(keyword);
	}

	public List<BoardVo> selectBywriter(String writer) {
		// TODO Auto-generated method stub
		return boardRepository.findByWriter(writer);
	}


}