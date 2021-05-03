package com.bitacademy.helpme.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitacademy.helpme.repository.ApplyRepository;
import com.bitacademy.helpme.vo.ApplyVo;
import com.bitacademy.helpme.vo.UserVo;

@Service
public class ApplyService {
	@Autowired
	private ApplyRepository applyRepository;
	public void insert(long boardno, long userno) {
		// TODO Auto-generated method stub
	
		ApplyVo vo = new ApplyVo();
		vo.setBoardno(boardno);
		vo.setUserno(userno);
		System.out.println(vo.toString());
		applyRepository.insert(vo);
		
	}
	public List<Long> findByBoardNo(long no) {
		
		return applyRepository.findByBoardNo(no);
	}
	public void choice(long userno, long boardno) {
		applyRepository.updateAllFail(boardno);
		ApplyVo vo = new ApplyVo();
		vo.setBoardno(boardno);
		vo.setUserno(userno);
		applyRepository.updatePass(vo);
		
	}
	public List<ApplyVo> selectByUserno(long userno) {
		// TODO Auto-generated method stub
		return applyRepository.selectByUserno(userno);
	}

}
