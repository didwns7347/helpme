package com.bitacademy.helpme.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bitacademy.helpme.security.Auth;
import com.bitacademy.helpme.service.ApplyService;
import com.bitacademy.helpme.service.UserService;
import com.bitacademy.helpme.vo.ApplyVo;
import com.bitacademy.helpme.vo.UserVo;

@Controller
@RequestMapping("/apply")
public class ApplyController {
	@Autowired
	private ApplyService applyService;
	@Autowired
	private UserService userService;
	@Auth
	@RequestMapping("view")
	public String view(long no, Model model) {
		List<Long> list1 =applyService.findByBoardNo(no);
		List<UserVo> list =userService.findByNo(list1);
		model.addAttribute("list", list);
		model.addAttribute("no",no);
		return "apply/view";
	}
	
	@Auth
	@RequestMapping("add")
	public String apply(long boardno, long userno) {
		System.out.println(boardno+" "+userno);
		applyService.insert(boardno,userno);
		return "redirect:/board";
	}
	@Auth
	@RequestMapping("result")
	public String result(long userno ,Model model) {
		List<ApplyVo> list=applyService.selectByUserno(userno);
		model.addAttribute("list", list);
		return "apply/myapply";
	}
	
	@Auth
	@RequestMapping("choice")
	public String choice(long userno, long boardno) {
		applyService.choice(userno,boardno);
		return "redirect:/board";
	}
	
	
	
}
