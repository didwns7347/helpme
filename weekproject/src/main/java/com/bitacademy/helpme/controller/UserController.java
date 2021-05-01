package com.bitacademy.helpme.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bitacademy.helpme.service.UserService;
import com.bitacademy.helpme.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login() {
		return "user/login";	
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(UserVo vo,HttpServletRequest request) {
		UserVo authUser=userService.login(vo);
		HttpSession session= request.getSession();
		if(authUser!=null) {
			session.setAttribute("authUser", authUser);
			return "redirect:/";
		}
		return "user/login";	
		
	}
	
	@RequestMapping(value="logout")
	public String logout(HttpServletRequest request) {
		HttpSession session= request.getSession();
		session.removeAttribute("authUser");
		return "redirect:/";	
		
	}
	
	

	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String join() {
		return "user/join";	
	}

	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join(UserVo vo) {
		userService.insert(vo);
		return "redirect:/";	
	}
}
