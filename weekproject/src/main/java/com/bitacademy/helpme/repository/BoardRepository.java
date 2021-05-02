package com.bitacademy.helpme.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bitacademy.helpme.vo.BoardVo;

@Repository
public class BoardRepository {
	@Autowired
	private SqlSession sqlSession;

	public boolean insert(BoardVo vo) {
		System.out.println(vo.toString());
		return 1==sqlSession.insert("board.insert", vo);
	}

	public List<BoardVo> selectAll() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("board.selectAll");
	}

	public BoardVo selectByNo(long no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("board.selectByNo", no);
	}

	public boolean deleteByNo(long no) {
		return 1==sqlSession.delete("board.deleteByNo", no);
	}
	
}
