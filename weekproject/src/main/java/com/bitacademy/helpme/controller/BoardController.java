package com.bitacademy.helpme.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bitacademy.helpme.security.Auth;
import com.bitacademy.helpme.service.ApplyService;
import com.bitacademy.helpme.service.BoardService;
import com.bitacademy.helpme.service.RepleService;
import com.bitacademy.helpme.vo.BoardVo;
import com.bitacademy.helpme.vo.RepleVo;


@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService boardService;
	@Autowired 
	private RepleService repleService;

	@RequestMapping("")
	public String index(Model model) {
		List<BoardVo> list = boardService.selectAll();
		model.addAttribute("list", list);
		return "board/index";
	}
	@RequestMapping("find")
	public String findIndex(String category,Model model) {
		List<BoardVo> list = boardService.selectByCategory(category);
		model.addAttribute("list", list);
		return "board/index";
	}
	@RequestMapping("search")
	public String search(String keyword,Model model) {
		List<BoardVo> list = boardService.selectByKeyword(keyword);
		model.addAttribute("list", list);
		return "board/index";
	}
	@RequestMapping("myboard")
	public String myboard(String writer,Model model) {
		List<BoardVo> list = boardService.selectBywriter(writer);
		model.addAttribute("list", list);
		return "board/index";
	}
	
	@Auth
	@RequestMapping("view")
	public String view(long no,Model model) {
		BoardVo vo=boardService.findByNo(no);
		List<RepleVo> list = repleService.selectByParent(no);
		model.addAttribute("boardVo",vo);
		model.addAttribute("list",list);
		
		
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
		System.out.println(vo.getCategory());
		boardService.insert(vo);
		return "redirect:/board";
	}
	@Auth
	@RequestMapping("delete")
	public String view(long no) {
		boardService.deleteByNo(no);
		repleService.deleteByParent(no);
		return "redirect:/board";
	}
	
	@Auth
	@RequestMapping("reple")
	public String reple(RepleVo vo) {
		repleService.addReple(vo);
		return  "redirect:/board/view?no="+vo.getParent();
	}
	
	
}