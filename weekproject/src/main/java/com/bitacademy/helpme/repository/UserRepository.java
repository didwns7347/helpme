package com.bitacademy.helpme.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bitacademy.helpme.vo.UserVo;
@Repository
public class UserRepository {
	@Autowired
	private SqlSession sqlSession;
	public UserVo findByIdPassword(UserVo vo) {
		UserVo user=sqlSession.selectOne("user.findByIdPassword", vo);
		return user;
	}
	
	public boolean insert(UserVo vo) {
		System.out.println(vo.toString());
		int count=sqlSession.insert("user.insert", vo);
		return count==1;
	}

}
