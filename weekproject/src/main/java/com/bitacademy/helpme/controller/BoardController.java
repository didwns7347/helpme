package com.bitacademy.helpme.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bitacademy.helpme.security.Auth;
import com.bitacademy.helpme.service.BoardService;
import com.bitacademy.helpme.vo.BoardVo;


@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("")
	public String index(Model model) {
		List<BoardVo> list = boardService.selectAll();
		model.addAttribute("list", list);
		return "board/index";
	}
	@Auth
	@RequestMapping("view")
	public String view(long no,Model model) {
		BoardVo vo=boardService.findByNo(no);
		model.addAttribute("boardVo",vo);
		return "board/view";
	}
	@Auth
	@RequestMapping(value="write",method=RequestMethod.GET)
	public String write() {
		return "board/write";
	}
	@Auth
	@RequestMapping(value="write",method=RequestMethod.POST)
	public String write(BoardVo vo) {
		boardService.insert(vo);
		return "redirect:/board";
	}
	@Auth
	@RequestMapping("delete")
	public String view(long no) {
		boardService.deleteByNo(no);
		return "redirect:/board";
	}
	
}
