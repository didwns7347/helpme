package com.bitacademy.helpme.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitacademy.helpme.repository.RepleRepository;
import com.bitacademy.helpme.vo.RepleVo;

@Service
public class RepleService {
	@Autowired
	private RepleRepository repleRepository;
	public void addReple(RepleVo vo) {
		repleRepository.insert(vo);
		
	}

	public List<RepleVo> selectByParent(long no) {
		return repleRepository.selectByParent(no);
	}

	public void deleteByParent(long no) {
		repleRepository.deleteByParent(no);
		
	}

}
