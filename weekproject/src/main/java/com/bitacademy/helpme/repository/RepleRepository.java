package com.bitacademy.helpme.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bitacademy.helpme.vo.RepleVo;

@Repository
public class RepleRepository {
	@Autowired
	private SqlSession sqlSession;

	public int insert(RepleVo vo) {
		return sqlSession.insert("reple.insert", vo);	
	}

	public List<RepleVo> selectByParent(long no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("reple.selectByParent", no);
	}

	public boolean deleteByParent(long no) {
		// TODO Auto-generated method stub
		return 1==sqlSession.delete("reple.deleteByParent",no);
	}

}
