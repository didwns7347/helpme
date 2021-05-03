package com.bitacademy.helpme.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bitacademy.helpme.vo.ApplyVo;
import com.bitacademy.helpme.vo.UserVo;

@Repository
public class ApplyRepository {
	@Autowired
	private SqlSession sqlSession;
	public boolean insert(ApplyVo vo) {
		// TODO Auto-generated method stub
		return 1==sqlSession.insert("apply.insert",vo);
	}
	public List<Long> findByBoardNo(long no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("apply.findByBoardNo",no);
	}
	public void updateAllFail(long boardno) {
		// TODO Auto-generated method stub
		sqlSession.update("apply.updateAllfail",boardno);
		
	}
	
	public void updatePass(ApplyVo vo) {
		// TODO Auto-generated method stub
		sqlSession.update("apply.updateUsernoBoardno", vo);
	}
	public List<ApplyVo> selectByUserno(long userno) {
		return sqlSession.selectList("apply.selectByUserno", userno);
		
	}

}
