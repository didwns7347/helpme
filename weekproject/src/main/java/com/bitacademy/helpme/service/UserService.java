package com.bitacademy.helpme.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitacademy.helpme.repository.UserRepository;
import com.bitacademy.helpme.vo.UserVo;
@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;
	public UserVo login(UserVo vo) {
		// TODO Auto-generated method stub
		UserVo authUser=userRepository.findByIdPassword(vo);
		return authUser;
		
		
	}
	public boolean insert(UserVo vo) {
		vo.setBalance(50000);
		vo.setPoint(0.0f);
		return userRepository.insert(vo);
		
	}

}
